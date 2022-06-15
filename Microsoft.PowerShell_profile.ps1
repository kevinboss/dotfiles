Import-Module posh-git
Import-Module Terminal-Icons

# PSReadLine
Set-PSREadLineOption -PredictionSource History

Invoke-Expression (oh-my-posh --init --shell pwsh --config ~/scoop/apps/oh-my-posh/current/themes/ys.omp.json)

# Alias
Set-Alias vim nvim
Set-Alias g git
Set-Alias ll ls
Set-Alias grep findstr
