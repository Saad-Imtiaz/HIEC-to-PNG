@echo off
setlocal enabledelayedexpansion

echo Current Directory: %cd%

echo Checking if ImageMagick is installed...
where magick >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: ImageMagick is not installed or not in the PATH.
    exit /b 1
)
echo ImageMagick is installed.

echo Checking for HEIC files...
if not exist *.heic (
    echo No HEIC files found in the current directory.
    exit /b 1
)
echo HEIC files found.

echo Starting conversion of HEIC files to PNG...

set /a "count=0"
set /a "total=0"
for %%x in (*.heic) do set /a "total+=1"

for %%f in (*.heic) do (
    set "input_file=%%f"
    set "output_file=%%~nf.png"
    set /a "count+=1"

    echo Processing file !count! of !total!: !input_file!

    REM Check if the output file already exists
    if exist "!output_file!" (
        echo Skipping !input_file! - Output file !output_file! already exists.
    ) else (
        REM Perform the conversion
        magick convert "!input_file!" "!output_file!"

        if !errorlevel! equ 0 (
            echo Conversion successful: !input_file! -> !output_file!
        ) else (
            echo Conversion failed for !input_file!.
        )
    )
)

echo All files processed.
