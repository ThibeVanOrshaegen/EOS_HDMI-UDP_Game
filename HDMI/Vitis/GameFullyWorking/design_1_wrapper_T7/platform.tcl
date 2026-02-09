# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\DERDEJAAR\EOS\GAME\GameFullyWorking\design_1_wrapper_T7\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\DERDEJAAR\EOS\GAME\GameFullyWorking\design_1_wrapper_T7\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper_T7}\
-hw {C:\DERDEJAAR\EOS\Series\Freestyle\XsaFiles\design_1_wrapper_T7.xsa}\
-out {C:/DERDEJAAR/EOS/GAME/GameFullyWorking}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_lwip_udp_perf_server}
platform generate -domains 
platform active {design_1_wrapper_T7}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
