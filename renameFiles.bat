@echo off
setlocal enabledelayedexpansion
set X=5
set FOLDER_PATH=.
pushd %FOLDER_PATH%
for %%f in (*) do if %%f neq %~nx0 (
    set "filename=%%f"
    echo !filename: =_!
	ren "%%f" "!filename: =_!"
)
popd
