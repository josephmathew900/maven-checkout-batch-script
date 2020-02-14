@echo off
@echo ****************************** Maven Checkout ******************************

@echo:
set /p version="Version : "
@echo:

IF exist %version% ( 
	@echo Directory %version% already exists 
) ELSE ( 
	mkdir %version% && @echo Directory %version% created
)

@echo:
cd %version%
@echo Changing directory to %version% ...
@echo Current Directory : %cd%

@echo:
@echo 1.Checkout
@echo 2.Update
@echo 3.Delete
@echo 4.Exit
@echo:
set /p option="Option : "

IF %option%==1 (
	@echo:
	@echo Executing ...
    @echo mvn -U multi-scm:checkout -DworkareaDefinitionUrl="***url***"
	@echo:
	CALL mvn -U multi-scm:checkout -DworkareaDefinitionUrl="***url***"
)

IF %option%==2 (
	@echo:
	@echo Executing ...
	@echo mvn multi-scm:update
	@echo:
	CALL mvn multi-scm:update
)

IF %option%==3 (
	@echo:
	@echo Executing ...
	@echo mvn multi-scm:delete
	@echo:
	CALL mvn multi-scm:delete
)

IF %option%==4 (
	@echo:
	@echo Press any key to exit ...
	pause > null
	exit
)

@echo:
@echo:

pause

