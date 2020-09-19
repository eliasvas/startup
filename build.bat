@echo off
where /q cl
if ERRORLEVEL 1 (
    call  "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"
)


set application_name=game.exe
set build_options= -DBUILD_DEVELOPER=1 -DBUILD_DEBUG=1 -DBUILD_WIN32=1
set compile_flags= -nologo -FC /W0 /Zi /EHsc -I../src
set link_flags= -incremental:no -opt:ref gdi32.lib opengl32.lib user32.lib dsound.lib dxguid.lib winmm.lib

if not exist build mkdir build
pushd build
start /b /wait "" "cl.exe" %compile_flags% %build_options% ..\src\win32_main.cpp -I../src/ /link %link_flags% /out:%application_name%
popd