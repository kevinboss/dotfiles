git fetch --prune
git branch -vv |
  Select-String gone |
  ForEach-Object { $_.ToString().Trim() } |
  ForEach-Object { ($_ -split "\s")[0] } |
  ForEach-Object { git branch -D $_ }