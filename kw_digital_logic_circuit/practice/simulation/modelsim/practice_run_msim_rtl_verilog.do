transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/minz0/Workspace/Assignment/kw_digital_logic_circuit/practice {C:/Users/minz0/Workspace/Assignment/kw_digital_logic_circuit/practice/mx2.v}
vlog -vlog01compat -work work +incdir+C:/Users/minz0/Workspace/Assignment/kw_digital_logic_circuit/practice {C:/Users/minz0/Workspace/Assignment/kw_digital_logic_circuit/practice/gates.v}

vlog -vlog01compat -work work +incdir+C:/Users/minz0/Workspace/Assignment/kw_digital_logic_circuit/practice {C:/Users/minz0/Workspace/Assignment/kw_digital_logic_circuit/practice/tb_testif.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_testif

add wave *
view structure
view signals
run -all
