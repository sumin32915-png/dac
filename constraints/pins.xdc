# HBE-Combo II-DLD S75 (xc7s75fgga484-1) / DAC / Top: dac
# MAIN CLOCK 스위치 F(50 MHz)
set_property PACKAGE_PIN B6 [get_ports clk_50mhz]
create_clock -name clk_50mhz -period 20.000 [get_ports clk_50mhz]

# SW_1 = 리셋, DIP 8 = 출력 채널 선택(0: A, 1: B)
set_property PACKAGE_PIN K4 [get_ports rst_p]
set_property PACKAGE_PIN U4 [get_ports add_sel]

# DAC에 쓰는 값(0~255) -> LED 1~8 (LED 1이 MSB)
set_property PACKAGE_PIN L4 [get_ports {led_out[7]}]
set_property PACKAGE_PIN M4 [get_ports {led_out[6]}]
set_property PACKAGE_PIN M2 [get_ports {led_out[5]}]
set_property PACKAGE_PIN N7 [get_ports {led_out[4]}]
set_property PACKAGE_PIN M7 [get_ports {led_out[3]}]
set_property PACKAGE_PIN M3 [get_ports {led_out[2]}]
set_property PACKAGE_PIN M1 [get_ports {led_out[1]}]
set_property PACKAGE_PIN N5 [get_ports {led_out[0]}]

# DAC 제어선 (교재 DAC 핀 구성표)
set_property PACKAGE_PIN E1 [get_ports dac_csn]
set_property PACKAGE_PIN F4 [get_ports dac_ldacn]
set_property PACKAGE_PIN G4 [get_ports dac_wen]
set_property PACKAGE_PIN G2 [get_ports dac_a_b]

# DAC 데이터 D0~D7 (D7이 MSB)
set_property PACKAGE_PIN E3 [get_ports {dac_d[0]}]
set_property PACKAGE_PIN E5 [get_ports {dac_d[1]}]
set_property PACKAGE_PIN D2 [get_ports {dac_d[2]}]
set_property PACKAGE_PIN D5 [get_ports {dac_d[3]}]
set_property PACKAGE_PIN C2 [get_ports {dac_d[4]}]
set_property PACKAGE_PIN C4 [get_ports {dac_d[5]}]
set_property PACKAGE_PIN B1 [get_ports {dac_d[6]}]
set_property PACKAGE_PIN B3 [get_ports {dac_d[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports *]
set_false_path -from [get_ports {rst_p add_sel}]