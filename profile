# nvim $PROFILE

oh-my-posh init pwsh | Invoke-Expression
if ((Get-Service ssh-agent).Status -ne 'Running') {
    Start-Service ssh-agent
}
# Has to come last:
Invoke-Expression (& { (zoxide init powershell | Out-String) })
