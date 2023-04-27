<powershell>
$Cert = New-SelfSignedCertificate -CertstoreLocation Cert:\LocalMachine\My -DnsName "packer"
cmd.exe /c winrm set "winrm/config/listener?Address=*+Transport=HTTPS" "@{Port="443";Hostname="packer";CertificateThumbprint="$($Cert.Thumbprint)"}"
cmd.exe /c netsh advfirewall firewall set rule group="remote administration" new enable=yes
cmd.exe /c netsh firewall add portopening TCP 443 "Port 443"
</powershell>
