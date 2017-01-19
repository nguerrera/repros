setlocal
pushd %~dp0
powershell -ExecutionPolicy Bypass .\installcli.ps1
dotnet restore
dotnet build
dotnet run
