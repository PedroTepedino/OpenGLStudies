@echo off

if not exist "./build" (
  echo Build folder does not exists!
  echo Run configure.bat than build.bat
) else (
  cd ./build/
  openGL-test.exe
  cd ..
)
