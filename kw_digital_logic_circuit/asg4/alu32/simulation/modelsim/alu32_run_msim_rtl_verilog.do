transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32/mx8_32bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32/mx2_32bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32/gates.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32/fa_v2.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32/clb4.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32/cla4_ov.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32/cla4.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32/cla32_ov.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32/cal_flags32.v}
vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32/alu32.v}

vlog -vlog01compat -work work +incdir+C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32 {C:/Users/dunca/Workspace/Assignment/kw_digital_logic_circuit/asg4/alu32/tb_alu32.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_alu32

add wave *
view structure
view signals
run -all
