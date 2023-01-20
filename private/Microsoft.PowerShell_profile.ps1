[console]::InputEncoding = [console]::OutputEncoding = [System.Text.UTF8Encoding]::new()

Import-Module posh-git
Import-Module Terminal-Icons

# PSReadLine
Set-PSREadLineOption -PredictionSource History

Invoke-Expression (oh-my-posh --init --shell pwsh --config ~/scoop/apps/oh-my-posh/current/themes/blue-owl.omp.json)

# Alias
Set-Alias vim nvim
Set-Alias g git
Set-Alias ll ls
Set-Alias grep findstr
