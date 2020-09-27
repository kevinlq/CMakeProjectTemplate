@echo off

:: 设置临时编译输出路径
set BUILD_TEMP=%~dp0\build_out\

set MINGW_PATH=C:/Qt/Qt5.15.1/Tools/mingw810_32/bin

:: 编译模式,debug或release
set BUILD_TYPE=Release

if not exist %BUILD_TEMP% (
	md %BUILD_TEMP%
)

cd %BUILD_TEMP%

:: -DCMAKE_TOOLCHAIN_FILE=../platforms/
cmake -G"MinGW Makefiles" ../../ -DCMAKE_BUILD_TYPE=%BUILD_TYPE% -DCMAKE_MAKE_PROGRAM=%MINGW_PATH%/mingw32-make.exe

pause