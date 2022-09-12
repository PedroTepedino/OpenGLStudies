cmake_minimum_required(VERSION 3.1)
project(openGL-test)

set(SOURCE 
  src/main.cpp
)

add_executable(${PROJECT_NAME} ${SOURCE})

set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 14)
target_compile_options(${PROJECT_NAME} PRIVATE -Wall)

add_definitions(-DGLEW_STATIC)
add_subdirectory(submodules/glfw EXCLUDE_FROM_ALL)
add_subdirectory(submodules/glew EXCLUDE_FROM_ALL)
add_subdirectory(submodules/glm EXCLUDE_FROM_ALL)

target_link_libraries(${PROJECT_NAME}
  PRIVATE glfw
  PRIVATE libglew_static
  PRIVATE glm
)

configure_file(
  ${CMAKE_CURRENT_SOURCE_DIR}/src/asset.hpp.in
  ${CMAKE_CURRENT_BINARY_DIR}/src/asset.hpp
)
target_include_directories( ${PROJECT_NAME}
  PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/src
  PRIVATE ${CAMKE_CURRENT_BINARY_DIR}/SRC
)
