dotnet build-server shutdown
taskkill /f /im msbuild.exe

dotnet msbuild MyTask.csproj /restore /p:Version=1.0.0
dotnet msbuild MyTask.csproj /restore /p:Version=2.0.0

dotnet msbuild Repro.proj /p:Version=1.0.0
dotnet msbuild Repro.proj /p:Version=2.0.0

