# credits: https://www.youtube.com/watch?v=fviSilPKIhs

# Aliases
Set-Alias tt tree
Set-Alias ll ls
Set-Alias vi vim

# Prompt
# oh-my-posh init powershell --config 'C:\Users\faisal\AppData\Local\Programs\oh-my-posh\themes\mt.omp.json' | Invoke-Expression
oh-my-posh init powershell --config 'C:\Users\faisal\AppData\Local\Programs\oh-my-posh\themes\M365Princess.omp.json' | Invoke-Expression
# oh-my-posh init powershell --config 'C:\Users\faisal\AppData\Local\Programs\oh-my-posh\themes\atomic.omp.json' | Invoke-Expression

# Icons Import
#Install-Module Terminal-Icons -Scope CurrentUser
Import-Module Terminal-Icons

# PSReadLine
#Install-Module PSReadLine -Scope CurrentUser
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView

# Docker commands auto-completion: https://github.com/matt9ucci/DockerCompletion
#Install-Module DockerCompletion -Scope CurrentUser
Import-Module DockerCompletion

# Functions
function whereis ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue | 
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
