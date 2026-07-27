@echo off
echo 🚀 SLP Form Filler Setup
echo.

REM Check Python
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python not found
    pause
    exit /b 1
)

echo ✅ Python found
echo.

REM Create virtual environment
echo 📦 Creating virtual environment...
python -m venv venv

REM Activate
echo 📦 Activating environment...
call venv\Scripts\activate.bat

REM Install dependencies
echo 📦 Installing dependencies...
pip install -r requirements.txt

REM Create .env if it doesn't exist
if not exist .env (
    copy .env.example .env
    echo 📝 Created .env file - edit it with your Deepgram API key
)

echo.
echo ✅ Setup complete!
echo.
echo 📝 Next steps:
echo 1. Edit .env and add your Deepgram API key
echo    Get one free at: https://deepgram.com
echo.
echo 2. Activate the environment:
echo    venv\Scripts\activate.bat
echo.
echo 3. Run the app:
echo    python main.py
echo.
echo 4. Open in browser:
echo    http://localhost:8000
echo.
pause
