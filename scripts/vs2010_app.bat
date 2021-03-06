@echo OFF

if [%1]==[] goto usage
	call "C:\Program Files\Microsoft Visual Studio 10.0\VC\bin\vcvars32.bat"
	mkdir build
	cd build
	cmake.exe -G"NMake Makefiles" -DCMAKE_BUILD_TYPE=RELEASE -DOpenCV_ROOT_DIR="%1" -DGTS_HELP="%2" -DGTS_TESTS="%3" ..
	cmake.exe --build .
goto :eof
:usage
	@echo Call from scripts folder
	@echo Usage: %0 OpenCV Location:^<PATH-TO-OPENCV^> GTS Help:^<ON^|OFF^> GTS Tests:^<ON^|OFF^>
	@echo 	set ^<param^> values
	@echo 	e.g. %0 C:/opencv/ ON ON
exit /B 1
