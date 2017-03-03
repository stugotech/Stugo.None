@echo off

if "%1"=="" goto usage

set PROJECT_NAME=Stugo.None
set FULL_VERSION=%1


msbuild /p:Configuration=net40 /m
msbuild /p:Configuration=net45 /m
mkdir %PROJECT_NAME%\bin\nupkg
mkdir %PROJECT_NAME%.Install\bin\nupkg
nuget pack %PROJECT_NAME%\%PROJECT_NAME%.nuspec -OutputDirectory %PROJECT_NAME%\bin\nupkg\ -Version "%FULL_VERSION%"
nuget pack %PROJECT_NAME%.Install\%PROJECT_NAME%.Install.nuspec -OutputDirectory %PROJECT_NAME%.Install\bin\nupkg\ -Version "%FULL_VERSION%"

goto :eof

:usage
echo "build.cmd <version>"