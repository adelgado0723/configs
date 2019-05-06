#a function to open the profile
function Pro {notepad C:\Users\adelg\Documents\WindowsPowerShell\profile.ps1}

#functions for  School 
function CAP  {cd C:\Users\adelg\Documents\School\Spring2018\CAP4770}
function School {cd C:\Users\adelg\Documents\School\Spring2018}
function COP1 {cd C:\Users\adelg\Documents\School\Spring2018\COP4610}
function COP2 {cd C:\Users\adelg\Documents\School\Spring2018\COP4710}
function COT  {cd C:\Users\adelg\Documents\School\Spring2018\COT3541}
function ocelot {ssh adelg001@ocelot.aul.fiu.edu}
function star {ssh adelg001@starship.cs.fiu.edu}
#functions for version control learning and vim

function LGIT {cd C:\Users\adelg\Documents\version-control\}
function LVIM {cd C:\Users\adelg\Documents\LearningVim}

#open java api in html
function Java-API
{
	start chrome C:\Users\adelg\Documents\School\fall2017\COP3530\jdk-8u144-docs-all\docs\api\index.html
}



#a function that opens Windows PowerShell Help in 
#a compiled HTML Help file (.chm)
function Get-CHM
{
Invoke-Item -Path "$env:windir\help\mui\0409\WindowsPowerShellHelp.chm"
}

#Customize Profile

#function Color-Console
#{
#$Host.ui.rawui.backgroundcolor = "green"
#$Host.ui.rawui.foregroundcolor = "yellow"
#$hosttime = (Get-ChildItem -Path $pshome\PowerShell.exe).CreationTime
#$hostversion="$($Host.Version.Major)`.$($Host.Version.Minor)"
#$Host.UI.RawUI.WindowTitle = "Windows PowerShell $hostversion ($hosttime)"
#Clear-Host
#}
#Color-Console

#lists aliases
function Get-CmdletAlias ($cmdletname)
{
Get-Alias | Where-Object -FilterScript {$_.Definition -like "$cmdletname"} | Format-Table -Property Definition, Name -AutoSize
}

function ad {ssh adelg@andy-delgado.com}

#My Aliases
Set-Alias cc gcc
Set-Alias np notepad

Set-Alias v vim


