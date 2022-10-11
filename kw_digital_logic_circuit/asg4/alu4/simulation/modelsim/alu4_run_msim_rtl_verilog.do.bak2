transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4/mx8_4bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4/mx8.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4/mx2_4bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4/mx2.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4/gates.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4/fa_v2.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4/clb4.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4/cla4_ov.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4/cal_flags4.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4/alu4.v}

vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu4/tb_alu4.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_alu4

add wave *
view structure
view signals
run -all
