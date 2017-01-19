$RepoRoot = "$PSScriptRoot"
$DotnetCLIVersion = "1.0.0-rc3-004512"

# Use a repo-local install directory (but not the bin directory because that gets cleaned a lot)
if (!$env:DOTNET_INSTALL_DIR)
{
    $env:DOTNET_INSTALL_DIR="$RepoRoot\.dotnet_cli\"
}
if (!(Test-Path $env:DOTNET_INSTALL_DIR))
{
    mkdir $env:DOTNET_INSTALL_DIR | Out-Null
}

Invoke-WebRequest "https://raw.githubusercontent.com/dotnet/cli/feature/msbuild/scripts/obtain/dotnet-install.ps1" -OutFile "$env:DOTNET_INSTALL_DIR\dotnet-install.ps1"

& "$env:DOTNET_INSTALL_DIR\dotnet-install.ps1" -Version "1.0.0-rc3-004512"
