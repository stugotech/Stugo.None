@echo off

echo Uploading package to NuGet feed
.\tools\NuGet\NuGet.exe push Stugo.None\bin\Release\*.nupkg -Source https://www.myget.org/F/stugo-private/api/v2/package
