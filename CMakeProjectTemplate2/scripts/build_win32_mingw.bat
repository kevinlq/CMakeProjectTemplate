@echo off

:: 设置临时编译输出路径
set DIR_COMPILER=MinGW
set BUILD_TEMP=%~dp0\build_%DIR_COMPILER%\

:: 编译模式,debug或release
set BUILD_TYPE=Release

if not exist %BUILD_TEMP% (
	md %BUILD_TEMP%
)

cd %BUILD_TEMP%

:: -DCMAKE_TOOLCHAIN_FILE=../platforms/
cmake -G"MinGW Makefiles" ../../ -DCMAKE_BUILD_TYPE=%BUILD_TYPE% -DCMAKE_MAKE_PROGRAM=mingw32-make.exe

mingw32-make -j4

pause