#!/bin/bash
echo "开始编译"

iverilog -o param param.v 
vvp param
#./invet
iverilog -o local_param 
vvp local_param

iverilog -o def_param def_param.v
vvp def_param
# echo "编译完成"
# vvp -n invet -lxt2
# echo "生成波形文件"
# cp test.vcd wave.lxt
# echo "打开波形文件"
# gtkwave wave.lxt

