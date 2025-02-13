#!/bin/bash
echo "开始编译"

iverilog -o top demo_tb_nowarn.v
vvp top
#./invet

# echo "编译完成"
# vvp -n top_tb -lxt2
# echo "生成波形文件"
# # cp test.vcd wave.lxt
# echo "打开波形文件"
# gtkwave top_tb.vcd

