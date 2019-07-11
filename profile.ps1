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
function nautilus {ssh adelg@99.155.236.13}

#My Aliases
Set-Alias cc gcc
Set-Alias np notepad

Set-Alias v vim

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
$DefaultUser = 'adelgado'

#Format XML

function Format-XML {
  [CmdletBinding()]
  Param ([Parameter(ValueFromPipeline=$true,Mandatory=$true)][string]$xmlcontent)
  $xmldoc = New-Object -TypeName System.Xml.XmlDocument
  $xmldoc.LoadXml($xmlcontent)
  $sw = New-Object System.IO.StringWriter
  $writer = New-Object System.Xml.XmlTextwriter($sw)
  $writer.Formatting = [System.XML.Formatting]::Indented
  $xmldoc.WriteContentTo($writer)
  $sw.ToString()
}

#Function for looping through a directory and formatting xml files
function Format-XMLItems($dir) {
	Get-ChildItem $dir -Filter *.xml |
	Foreach-Object {
		
		echo "FORMATTING: $_.FullName ..."
		cat $_.FullName | Format-XML ` | Set-Content $_.FullName
	}
	
}

