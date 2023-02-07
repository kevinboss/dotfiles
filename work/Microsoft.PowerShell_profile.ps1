[console]::InputEncoding = [console]::OutputEncoding = [System.Text.UTF8Encoding]::new()

Import-Module posh-git
Import-Module Terminal-Icons

# PSReadLine
Set-PSREadLineOption -PredictionSource History

Invoke-Expression(oh-my-posh init pwsh --config "$(scoop prefix oh-my-posh)\themes\onehalf.minimal.omp.json")

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
