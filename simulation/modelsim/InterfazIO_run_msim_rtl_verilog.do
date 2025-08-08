transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/jbran/OneDrive/Documentos/Escuela/Servicio\ CIC/InterfazIO {C:/Users/jbran/OneDrive/Documentos/Escuela/Servicio CIC/InterfazIO/InterfazIO.v}
vlog -vlog01compat -work work +incdir+C:/Users/jbran/OneDrive/Documentos/Escuela/Servicio\ CIC/InterfazIO {C:/Users/jbran/OneDrive/Documentos/Escuela/Servicio CIC/InterfazIO/RegIo.v}
vlog -vlog01compat -work work +incdir+C:/Users/jbran/OneDrive/Documentos/Escuela/Servicio\ CIC/InterfazIO {C:/Users/jbran/OneDrive/Documentos/Escuela/Servicio CIC/InterfazIO/TRC.v}

