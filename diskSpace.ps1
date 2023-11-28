#This script will retrieve the amount of disk space on a remote computer. 

$RemoteComputerName = "REMOTECOMPUTER" # Replace this value with the remote computer you want to test
Get-WmiObject -Class Win32_LogicalDisk -ComputerName $RemoteComputerName | Select-Object DeviceID, FreeSpace, Size
