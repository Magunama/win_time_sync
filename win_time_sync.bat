net start w32time

:loop
	for /f "delims=" %%i in ('w32tm /resync') do (set output=%%i)
	if "%output%" == "The computer did not resync because no time data was available." (goto :loop)
