# GaspHack_Mod

移除字体文件的hint描述

*如果嫌麻烦可以直接用我这里的已经[修改好的字体文件](workingDir/output/)*

## 1. 备份 `C:\Windows\Fonts`

* 字体输入文件夹(相当于备份不要删除): workingDir\input

* 字体输出文件夹: workingDir\output

**将需要替换的字体文件单独保存到 C:\Fonts**

## 2. **建议替换的字体文件如下(包括简体和繁体雅黑类字体) :**

* msjh.ttc
* msjhbd.ttc
* msjhl.ttc
* msyh.ttc
* msyhbd.ttc
* msyhl.ttc

*建议不要将宋体之类的替换掉 , 否则显示效果会比较恶心 !*

## 2. 将C:\Fonts字体文件替换到:C:\Windows\Fonts 两种方式

* 「设置 - 更新和安全 - 恢复 - 高级启动 - 立即重新启动」-->RE下「疑难解答 - 命令提示符」

``` shell
# 命令提示符下，c盘不一定是系统的c盘，用dir确认一下
xcopy /E C:\Fonts C:\Windows\Fonts
```

* U盘启动PE环境替换字体文件

**文件夹可以随意自定义, 对应替换即可.**
