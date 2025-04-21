@echo off

echo Make sure you have python 3.10+ to run this script.
set /p user_input=Press Enter key to continue?:


REM Use current directory
SET "VENV_DIR=%~dp0venv"
SET "VENV_ACTIVATE=%VENV_DIR%\Scripts\activate.bat"
SET "PYTHON_EXE=C:\Users\Rahul\AppData\Local\Programs\Python\Python313\python.exe"

REM Check if virtual environment already exists
IF EXIST "%VENV_ACTIVATE%" (
    echo ✅ Virtual environment already exists. Skipping creation.
) ELSE (
    echo 🔧 Creating virtual environment in: %VENV_DIR%
    "%PYTHON_EXE%" -m venv "%VENV_DIR%"
)

REM Activate the virtual environment
echo 🔄 Activating virtual environment...
call "%VENV_ACTIVATE%"

REM Install dependencies
echo 📦 Installing python dependencies...
pip install pyautogui
pip install pyscreeze
pip install pyscreeze
pip install Pillow
pip install Opencv-python

REM Run your script
echo 🚀 Running your script...
echo To stop script press CTRL + C
"%VENV_DIR%\Scripts\python.exe" "%~dp0test.py"

pause
