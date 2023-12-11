@echo off
setlocal enabledelayedexpansion

set "commandFile=HEICToPNG.bat"

echo Checking for HEIC files...
if not exist *.heic (
    echo No HEIC files found in the current directory.
    exit /b 1
)
echo HEIC files found.

echo Generating ImageMagick convert commands in %commandFile%...

if exist "%commandFile%" del "%commandFile%"
for %%f in (*.heic) do (
    echo magick convert "%%f" "%%~nf.png" >> "%commandFile%"
)

echo Command file generated: %commandFile%
exit /b
