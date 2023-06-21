# credits: https://www.youtube.com/watch?v=fviSilPKIhs

# Aliases
Set-Alias tt tree
Set-Alias ll ls
Set-Alias vi vim

# Prompt
# oh-my-posh init powershell --config 'C:\Users\faisal\AppData\Local\Programs\oh-my-posh\themes\mt.omp.json' | Invoke-Expression
oh-my-posh init powershell --config 'C:\Users\faisal\AppData\Local\Programs\oh-my-posh\themes\M365Princess.omp.json' | Invoke-Expression
# oh-my-posh init powershell --config 'C:\Users\faisal\AppData\Local\Programs\oh-my-posh\themes\atomic.omp.json' | Invoke-Expression

# winget install --id=Neovim.Neovim -e

# Icons Import
Import-Module Terminal-Icons

# PSReadLine
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView

# Chocolatey Import and refreshenv for pyenv
Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
refreshenv

# Docker commands auto-completion: https://github.com/matt9ucci/DockerCompletion
#Install-Module DockerCompletion -Scope CurrentUser
Import-Module DockerCompletion

# Functions
function whereis ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

#tfswitch https://www.linkedin.com/pulse/terraform-version-switcher-windows-%C5%82ukasz-kurzyniec

