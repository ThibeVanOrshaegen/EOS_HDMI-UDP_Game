/*
 * Copyright (C) 2017 - 2019 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

/** Connection handle for a UDP Server session */

#include "udp_perf_server.h"

extern struct netif server_netif;
static struct udp_pcb *pcb;
static struct perf_stats server;
/* Report interval in ms */
#define REPORT_INTERVAL_TIME (INTERIM_REPORT_INTERVAL * 1000)

void print_app_header(void)
{
	xil_printf("UDP server listening on port %d\r\n",
			UDP_CONN_PORT);
	xil_printf("On Host: Run $iperf -c %s -i %d -t 300 -u -b <bandwidth>\r\n",
			inet_ntoa(server_netif.ip_addr),
			INTERIM_REPORT_INTERVAL);

}

static void print_udp_conn_stats(void)
{
	xil_printf("[%3d] local %s port %d connected with ",
			server.client_id, inet_ntoa(server_netif.ip_addr),
			UDP_CONN_PORT);
	xil_printf("%s port %d\r\n", inet_ntoa(pcb->remote_ip),
			pcb->remote_port);
	xil_printf("[ ID] Interval\t     Transfer     Bandwidth\t");
	xil_printf("    Lost/Total Datagrams\n\r");
}

static void stats_buffer(char* outString,
		double data, enum measure_t type)
{
	int conv = KCONV_UNIT;
	const char *format;
	double unit = 1024.0;

	if (type == SPEED)
		unit = 1000.0;

	while (data >= unit && conv <= KCONV_GIGA) {
		data /= unit;
		conv++;
	}

	/* Fit data in 4 places */
	if (data < 9.995) { /* 9.995 rounded to 10.0 */
		format = "%4.2f %c"; /* #.## */
	} else if (data < 99.95) { /* 99.95 rounded to 100 */
		format = "%4.1f %c"; /* ##.# */
	} else {
		format = "%4.0f %c"; /* #### */
	}
	sprintf(outString, format, data, kLabel[conv]);
}


/** The report function of a TCP server session */
static void udp_conn_report(u64_t diff,
		enum report_type report_type)
{
	u64_t total_len, cnt_datagrams, cnt_dropped_datagrams, total_packets;
	u32_t cnt_out_of_order_datagrams;
	double duration, bandwidth = 0;
	char data[16], perf[16], time[64], drop[64];

	if (report_type == INTER_REPORT) {
		total_len = server.i_report.total_bytes;
		cnt_datagrams = server.i_report.cnt_datagrams;
		cnt_dropped_datagrams = server.i_report.cnt_dropped_datagrams;
	} else {
		server.i_report.last_report_time = 0;
		total_len = server.total_bytes;
		cnt_datagrams = server.cnt_datagrams;
		cnt_dropped_datagrams = server.cnt_dropped_datagrams;
		cnt_out_of_order_datagrams = server.cnt_out_of_order_datagrams;
	}

	total_packets = cnt_datagrams + cnt_dropped_datagrams;
	/* Converting duration from milliseconds to secs,
	 * and bandwidth to bits/sec .
	 */
	duration = diff / 1000.0; /* secs */
	if (duration)
		bandwidth = (total_len / duration) * 8.0;

	stats_buffer(data, total_len, BYTES);
	stats_buffer(perf, bandwidth, SPEED);
	/* On 32-bit platforms, xil_printf is not able to print
	 * u64_t values, so converting these values in strings and
	 * displaying results
	 */
	sprintf(time, "%4.1f-%4.1f sec",
			(double)server.i_report.last_report_time,
			(double)(server.i_report.last_report_time + duration));
	sprintf(drop, "%4llu/%5llu (%.2g%%)", cnt_dropped_datagrams,
			total_packets,
			(100.0 * cnt_dropped_datagrams)/total_packets);
	xil_printf("[%3d] %s  %sBytes  %sbits/sec  %s\n\r", server.client_id,
			time, data, perf, drop);

	if (report_type == INTER_REPORT) {
		server.i_report.last_report_time += duration;
	} else if ((report_type != INTER_REPORT) && cnt_out_of_order_datagrams) {
		xil_printf("[%3d] %s  %u datagrams received out-of-order\n\r",
				server.client_id, time,
				cnt_out_of_order_datagrams);
	}
}


static void reset_stats(void)
{
	server.client_id++;
	/* Save start time */
	server.start_time = get_time_ms();
	server.end_time = 0; /* ms */
	server.total_bytes = 0;
	server.cnt_datagrams = 0;
	server.cnt_dropped_datagrams = 0;
	server.cnt_out_of_order_datagrams = 0;
	server.expected_datagram_id = 0;

	/* Initialize Interim report parameters */
	server.i_report.start_time = 0;
	server.i_report.total_bytes = 0;
	server.i_report.cnt_datagrams = 0;
	server.i_report.cnt_dropped_datagrams = 0;
	server.i_report.last_report_time = 0;
}

/** Receive data on a udp session and send a custom response or echo it back to the sender */
static void udp_recv_perf_traffic(void *arg, struct udp_pcb *tpcb,
        struct pbuf *p, const ip_addr_t *addr, u16_t port)
{
    if (p == NULL) {
        xil_printf("Lege payload ontvangen, pakket wordt genegeerd.\n");
        return;
    }

    // Buffer voor IP-adres string
    char ip_str[IP4ADDR_STRLEN_MAX];
    inet_ntoa_r(*addr, ip_str, IP4ADDR_STRLEN_MAX); // Zet IP om naar string

    // Buffer voor ontvangen bericht
    char message_buf[p->len + 1]; // +1 voor null-terminator
    memcpy(message_buf, p->payload, p->len);
    message_buf[p->len] = '\0'; // Zorg dat de string null-terminated is

    // Print het ontvangen bericht met IP-adres
    xil_printf("%s: %s\n", ip_str, message_buf);

    ///////////////////////////
    // *** Optie: stuur een aangepast bericht terug ***
    const char *custom_message = "Server response: Bericht goed ontvangen";
    u16_t custom_message_len = strlen(custom_message);

    struct pbuf *response_pbuf = pbuf_alloc(PBUF_TRANSPORT, custom_message_len, PBUF_POOL);
    if (response_pbuf) {
    	//char ip_str[IP4ADDR_STRLEN_MAX];
    	inet_ntoa_r(*addr, ip_str, IP4ADDR_STRLEN_MAX);
    	xil_printf("Response sent to: %s:%d\n", ip_str, port);
        memcpy(response_pbuf->payload, custom_message, custom_message_len);
        err_t err = udp_sendto(tpcb, response_pbuf, addr, port);
        if (err != ERR_OK) {
            xil_printf("Fout bij het terugsturen van het aangepaste bericht: %d\r\n", err);
        }
        pbuf_free(response_pbuf);
    } else {
        xil_printf("Fout bij het toewijzen van een pbuf voor aangepast bericht.\n");
    }
    //////////////////////////

    // *** Alternatieve optie: stuur een echo terug ***
    /*
    struct pbuf *echo_pbuf = pbuf_alloc(PBUF_TRANSPORT, p->len, PBUF_POOL);
    if (echo_pbuf) {
        memcpy(echo_pbuf->payload, p->payload, p->len);
        err_t err = udp_sendto(tpcb, echo_pbuf, addr, port);
        if (err != ERR_OK) {
            xil_printf("Fout bij het terugsturen van het bericht: %d\r\n", err);
        }
        pbuf_free(echo_pbuf);
    } else {
        xil_printf("Fout bij het toewijzen van een pbuf voor echo.\n");
    }
    */

    // Update statistieken
    server.cnt_datagrams++;
    server.total_bytes += p->tot_len;

    // Vrijgeven van de ontvangen buffer
    pbuf_free(p);
}





void start_application(void)
{
	err_t err;

	/* Create Server PCB */
	pcb = udp_new();
	if (!pcb) {
		xil_printf("UDP server: Error creating PCB. Out of Memory\r\n");
		return;
	}

	err = udp_bind(pcb, IP_ADDR_ANY, UDP_CONN_PORT);
	if (err != ERR_OK) {
		xil_printf("UDP server: Unable to bind to port");
		xil_printf(" %d: err = %d\r\n", UDP_CONN_PORT, err);
		udp_remove(pcb);
		return;
	}

	/* specify callback to use for incoming connections */
	udp_recv(pcb, udp_recv_perf_traffic, NULL);

	return;
}
