echo. 2>EmptyFile.js
MKDIR c:example1
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%chocolateybin
choco install logdna-agent -y
logdna-agent -k d8e14421399a44a9a35dfc49c7f5f0aa # this is your unique Agent API Key
:: by default the agent monitors %ALLUSERSPROFILE%logs
logdna-agent -d C:LogFiles
nssm start logdna-agent
