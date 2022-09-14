@echo off

if not exist "./build" (
  echo Build folder does not exists and will be created
  mkdir ./build
)

cmake -DGLFW_BUILD_DOCS=OFF -S . -B ./build/ -G "MinGW Makefiles" 

