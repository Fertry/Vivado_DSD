@echo off
set xv_path=D:\\Programas\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 872af26f5de04b25969d7beef6f1b1f1 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L secureip --snapshot TutVivado_tb1_func_impl xil_defaultlib.TutVivado_tb1 xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
