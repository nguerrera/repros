dotnet build-server shutdown
taskkill /f /im msbuild.exe

msbuild /m /v:m MyTask.csproj /restore /p:Version=1.0.0
msbuild /m /v:m MyTask.csproj /restore /p:Version=2.0.0

msbuild /m /v:m Repro.proj /p:Version=1.0.0
msbuild /m /v:m Repro.proj /p:Version=2.0.0

