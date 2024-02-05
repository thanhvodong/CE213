onerror {quit -f}
vlib work
vlog -work work Cau2.vo
vlog -work work Cau2.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Cau2_vlg_vec_tst
vcd file -direction Cau2.msim.vcd
vcd add -internal Cau2_vlg_vec_tst/*
vcd add -internal Cau2_vlg_vec_tst/i1/*
add wave /*
run -all
