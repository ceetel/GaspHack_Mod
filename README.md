# GaspHack_Mod

移除字体文件的hint描述

*如果嫌麻烦可以直接用我这里的已经[修改好的字体文件](workingDir/output/)*

**国内连不上使用[我的gitee仓库](https://gitee.com/tallsone/GaspHack_Mod)**

## 0. 正常运行流程

    0.1. 拷贝所有C:\Windows\Fonts文件夹内的字体文件到workingDir/input目录
    0.2. 读取workingDir/input目录内的字体文件修改hint后输出到workingDir/output目录

**`workingDir/ttc_temp`为暂存区,存放着正在处理中的字体文件**

* 字体输入文件夹: [workingDir\input](workingDir/input/)

* 字体输出文件夹: [workingDir\output](workingDir/output/)

## 1. 备份 `C:\Windows\Fonts`

**自由备份C:\Windows\Fonts到任意位置input文件夹虽然放置着原版字体文件但下次运行时会被清空!**

## 2. 保存

*将需要替换的字体文件单独保存到 `C:\Fonts`保存到其他位置自由选择替换对应目录即可*

**建议替换的字体文件如下(包括简体和繁体"微软雅黑","微软正黑")**

* msjh.ttc
* msjhbd.ttc
* msjhl.ttc
* msyh.ttc
* msyhbd.ttc
* msyhl.ttc

*建议不要将宋体之类的替换掉 , 否则显示效果会比较恶心 !*

## 3. 替换

将`C:\Fonts`字体文件替换到`C:\Windows\Fonts`两种方式

* 「设置 - 更新和安全 - 恢复 - 高级启动 - 立即重新启动」-->RE下「疑难解答 - 命令提示符」

```bat
# 命令提示符下，c盘不一定是系统的c盘，用dir确认一下
xcopy /E C:\Fonts C:\Windows\Fonts
```

* U盘启动PE环境替换

**文件夹可以随意自定义, 对应替换即可.**
