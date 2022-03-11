# 基于8051指令集的8位MCU内核设计
&emsp;&emsp;本设计MCU内核包括运算控制器、算术逻辑单元、指令译码器、分频器、指令控制、复位控制、计时器、中断程序控制器、串口控制等，实现了经典8051MCU的绝大部分指令功能。
## 环境
&emsp;&emsp;设计所使用的软件环境为Synopsys公司的用于数字设计的软件集合，包括编译使用的VCS、波形仿真使用的Verdi、综合以及时序面积约束使用的Design Compiler、STA使用的Prime Time以及形式验证所使用的Formality。整个软件环境配置在WSL2的ubuntu子系统中，并使用vscode remote链接运行。
## 文件说明
&emsp;&emsp;所有的设计代码都保存在rtl目录下，包括：

1. [MCU.v](./rtl/MCU.v) ： 设计的MCU顶层模块，在其中对CPU、定时计数器、中断控制器、串口控制器以及一块FIFO控制进行了例化；
2. [CPU.v](./rtl/CPU.v) ： CPU模块，作为MCU的核心，提供了算术逻辑运算，指令译码，数据读写控制、运行状态转移以及响应中断等功能；
3. [InsDecoder.v](./rtl/InsDecoder.v) ： 指令译码器模块，
## 编译
## 仿真
## 综合
## STA