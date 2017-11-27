cd Build
if "%CONFIGURATION%"=="Debug" (
  echo "appveyorTestScript.bat thinks this is a Debug build"
  ctest -j 2 -C %CONFIGURATION% -D ExperimentalMemCheck
  codecov --root .. --no-color --disable gcov -f cobertura1.xml cobertura2.xml cobertura3.xml cobertura4.xml cobertura5.xml -t %CODECOV_TOKEN%
)
if "%CONFIGURATION%"=="Release" (
  echo "appveyorTestScript.bat thinks this is a Release build"
  ctest -j 2 -C %CONFIGURATION%
)
