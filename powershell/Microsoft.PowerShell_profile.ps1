New-Alias kubectl C:\Users\seanl\Kubernetes\kubectl.exe

Function Go-Home {Set-Location C:\Users\seanl\}
New-Alias home Go-Home

Function Edit-PowerShellProfile {notepad $profile}
New-Alias editprofile Edit-PowershellProfile

Function Get-Version {$PSVersionTable}
New-Alias version Get-Version

Function Kube-Master {ssh kube-master}
New-Alias master Kube-Master

Function Kube-NodeMac {ssh kube-node-mac}
New-Alias node-mac Kube-NodeMac

Function Kube-NodePc {ssh kube-node-pc}
New-Alias node-pc Kube-NodePc

Function Kube-PiN1 {ssh kube-pi-n1}
New-Alias node-pi1 Kube-PiN1

Function Kube-PiN2 {ssh kube-pi-n2}
New-Alias node-pi2 Kube-PiN2

Function Kube-PiN3 {ssh kube-pi-n3}
New-Alias node-pi3 Kube-PiN3

Function Kube-PiN4 {ssh kube-pi-n4}
New-Alias node-pi4 Kube-PiN4

Function SSH-Ficken {ssh ficken}
New-Alias ficken SSH-Ficken

Function SSH-Mint {ssh mintlap}
New-Alias mint SSH-Mint