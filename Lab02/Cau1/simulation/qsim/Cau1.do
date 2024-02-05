onerror {quit -f}
vlib work
vlog -work work Cau1.vo
vlog -work work Cau1.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.four_bit_counter_vlg_vec_tst
vcd file -direction Cau1.msim.vcd
vcd add -internal four_bit_counter_vlg_vec_tst/*
vcd add -internal four_bit_counter_vlg_vec_tst/i1/*
add wave /*
run -all
