@call set_vars.bat
@echo Building boost...
@cd %ROOTPATH%\%EWBLIBS%\%BOOST%

@echo bootstrap...
call bootstrap.bat mingw
@echo.
@echo.
@echo building...
b2 --build-type=complete --with-chrono --with-filesystem --with-program_options --with-system --with-thread toolset=gcc variant=release link=static threading=multi runtime-link=static stage
@cd ..\..\%EWBPATH%
@if not "%RUNALL%"=="1" pause
