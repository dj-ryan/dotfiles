# PSReadLine doesn't always auto-load under psmux, which leaves panes without shared history
Import-Module PSReadLine
Set-PSReadLineOption -HistorySavePath "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
Set-PSReadLineOption -HistorySaveStyle SaveIncrementally
