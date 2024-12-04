@prompt $G$S

rd /s /q tmp bin obj
md tmp\with_update
dotnet build /p:UpdateXlfOnBuild=true /bl:tmp\with_update\msbuild.binlog
ildasm bin\debug\net8.0\fr\XliffResourceNames.resources.dll /out=tmp\with_update\XliffResourceNames.il

rd /s /q bin obj
md tmp\without_update
dotnet build /bl:tmp\without_update\msbuild.binlog
ildasm bin\debug\net8.0\fr\XliffResourceNames.resources.dll /out=tmp\without_update\XliffResourceNames.il

