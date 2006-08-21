SET builddir=%SRC_DIR%\..\build_dir
if errorlevel 1 exit 1

REM rmdir /s /q %builddir%
REM if errorlevel 1 exit 1
REM mkdir  %builddir%
REM if errorlevel 1 exit 1
cd %builddir%
if errorlevel 1 exit 1

cmake %SRC_DIR% -G "Visual Studio 11 2012 Win64"
if errorlevel 1 exit 1

cmake --build %builddir% --config Release --target Hello
if errorlevel 1 exit 1

"%PYTHON%" setup.py install
if errorlevel 1 exit 1
