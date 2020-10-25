@echo off
set xv_path=D:\\Programas\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim TutVivado_tb1_func_impl -key {Post-Implementation:sim_1:Functional:TutVivado_tb1} -tclbatch TutVivado_tb1.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
