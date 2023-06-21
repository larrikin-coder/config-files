#Aliases
Set-Alias tt tree
Set-Alias ll ls
Set-Alias g git
Set-Alias vim nvim





#Prompt
oh-my-posh init pwsh --config 'C:/Users/SHAURYA/Documents/Powershell/myprofile.omp.json' | Invoke-Expression 


#Functions
Function whereis ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
Import-Module Terminal-Icons
Import-Module PSReadLine
Set-PSReadLineKeyHandler -key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView
