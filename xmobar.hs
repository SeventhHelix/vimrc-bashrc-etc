-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

Config {
    font = "xft:Fixed-8",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = Static { xpos = 0, ypos = 0, width = 1680, height = 16 },
    lowerOnStart = True,
    commands = [
        Run Battery [] 10,
        Run Cpu ["-L","3","-H","50","--normal","#CEFFAC","--high","#FFB6B0"] 10,
        Run MultiCpu ["-t","Cpu: <total0><total1><total2><total3>","-L","3","-H","50","--normal","#CEFFAC","--high","#FFB6B0","-w","5"] 10,
        Run Memory ["-t","Mem: <usedratio>%"] 10,
        Run Swap [] 10,
        Run Network "eth0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 5,
        Run Date "%a %b %_d %l:%M" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %cpu%  |   %memory%   |  <fc=#FFFFCC>%date%</fc>"
}
