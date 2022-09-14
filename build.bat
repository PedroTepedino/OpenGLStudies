@echo off
if not exist "./build" (
  echo Build folder does not exist.
  echo Run configure.bat
) else (
  cd ./build/ 
  mingw32-make 
  cd ..
)
