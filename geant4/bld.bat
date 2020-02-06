mkdir %SRC_DIR%\geant4-build
cd %SRC_DIR%\geant4-build

set BUILD_TYPE=Release

cmake -G "%CMAKE_GENERATOR%" ^
      -DCMAKE_BUILD_TYPE="%BUILD_TYPE%" ^
      -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
      -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
      -DBUILD_SHARED_LIBS=ON ^
      -DGEANT4_INSTALL_EXAMPLES=ON ^
      -DGEANT4_INSTALL_DATA=ON ^
      -DGEANT4_BUILD_MULTITHREADED=ON ^
      -DGEANT4_USE_GDML=ON ^
      -DGEANT4_BUILD_MSVC_MP=ON ^
      %SRC_DIR%
if errorlevel 1 exit 1

cmake --build . --config Release
if errorlevel 1 exit 1

cmake --build . --config Release --target install
if errorlevel 1 exit 1
