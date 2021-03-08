## Clock signal
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports CLK100MHZ]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports CLK100MHZ]

create_clock -period 10.000 -name CLK100MHZ -waveform {0.000 5.000}

set_property PACKAGE_PIN H17 [get_ports c_0]
set_property PACKAGE_PIN J15 [get_ports a_0]
set_property PACKAGE_PIN L16 [get_ports b_0]

set_property IOSTANDARD LVCMOS33 [get_ports c_0]
set_property IOSTANDARD LVCMOS33 [get_ports a_0]
set_property IOSTANDARD LVCMOS33 [get_ports b_0]