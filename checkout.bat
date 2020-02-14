@echo off
@echo ****************************** Maven Checkout ******************************
@echo:
set /p version="Version : "
@echo:
mkdir %version%
@echo:
cd %version%
@echo Changing directory ...
@echo Current Directory : %cd%
@echo:
@echo 1.Checkout
@echo 2.Update
@echo 3.Clean
@echo:
set /p option="Option : "

if %option%==1 (
	@echo:
	@echo Executing ...
    @echo mvn -U multi-scm:checkout -DworkareaDefinitionUrl="*****url*****"
	@echo:
	CALL mvn -U multi-scm:checkout -DworkareaDefinitionUrl="*****url*****"
)

if %option%==2 (
	@echo:
	@echo Executing ...
	@echo mvn multi-scm:update
	@echo:
	CALL mvn multi-scm:update
)

if %option%==3 (
	@echo:
	@echo Executing ...
	@echo mvn multi-scm:clean
	@echo:
	CALL mvn multi-scm:clean
)

@echo:
@echo:

pause

