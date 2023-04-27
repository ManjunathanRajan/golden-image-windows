Write-Host "PACKER_BUILD_NAME is an env var Packer automatically sets for you."
Write-Host "...or you can set it in your builder variables."
Write-Host "The default for this builder is:" $Env:PACKER_BUILD_NAME

Write-Host "The PowerShell provisioner will automatically escape characters"
Write-Host "considered special to PowerShell when it encounters them in"
Write-Host "your environment variables or in the PowerShell elevated"
Write-Host "username/password fields."
Write-Host "For example, VAR1 from our config is:" $Env:VAR1
Write-Host "Likewise, VAR2 is:" $Env:VAR2
Write-Host "VAR3 is:" $Env:VAR3
Write-Host "Finally, VAR4 is:" $Env:VAR4
Write-Host "None of the special characters needed escaping in the template"

Write-Host "Installing required software..."

# Install Chocolatey package manager
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Git
choco install git -y

# Install 7-Zip
choco install 7zip -y

# Install Docker
choco install docker-desktop -y

# Install Google Chrome
choco install googlechrome -y

# Install Apache OpenOffice
choco install openoffice -y

# Install FileZilla
choco install filezilla -y

# Install Visual Studio (Community Edition)
choco install visualstudio2019community -y

# Install AWS CLI
choco install awscli -y

Write-Host "Installation completed."
