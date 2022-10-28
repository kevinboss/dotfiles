Import-Module posh-git
Import-Module Terminal-Icons

# PSReadLine
Set-PSREadLineOption -PredictionSource History

Invoke-Expression (oh-my-posh --init --shell pwsh --config C:\Users\kebo\scoop\apps\oh-my-posh\current\themes\blue-owl.omp.json)

# Alias
Set-Alias vim nvim
Set-Alias g git
Set-Alias ll ls
Set-Alias grep findstr

$PROFILEFOLDER = [System.IO.Path]::GetDirectoryName($PROFILE)
New-Alias cleanob $PROFILEFOLDER\Scripts\obj_bin.ps1
New-Alias grgr $PROFILEFOLDER\Scripts\grgr.ps1


Function CDHo {Set-Location -Path $HOME}
Set-Alias -Name cdh -Value CDHo
Set-Alias -Name cdhome -Value CDHo

Function CDRep {Set-Location -Path $ENV:REPOS}
Set-Alias -Name cdr -Value CDRep
Set-Alias -Name cdrepos -Value CDRep