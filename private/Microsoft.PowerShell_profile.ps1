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
