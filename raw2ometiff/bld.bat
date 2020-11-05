set pkg=raw2ometiff-%PKG_VERSION%-%PKG_BUILDNUM%

mkdir %PREFIX%\share\%pkg%\bin
copy %SRC_DIR%\bin\raw2ometiff.bat %PREFIX%\share\%pkg%\bin\
if errorlevel 1 exit 1

mkdir %PREFIX%\bin
echo %%~dp0..\share\%pkg%\bin\raw2ometiff %%* > %PREFIX%\bin\raw2ometiff.bat
if errorlevel 1 exit 1
