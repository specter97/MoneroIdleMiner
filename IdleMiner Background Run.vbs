Dir = "PATH TO Directory WITH IDLEMINER AND THE MINER OF CHOICE"
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
& "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colProcesses = objWMIService.ExecQuery _
("Select * from Win32_Process Where Name = 'IdleMiner.exe'")
if colProcesses.Count = 0 Then
Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.CurrentDirectory = theDir
WshShell.Run "IdleMiner.exe",1,false
End If
WSCript.Quit