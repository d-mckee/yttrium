@echo off

echo Enabling venv...
call venv\Scripts\activate
echo Installing package %1...
pip install %1
echo Freezing requirements to requirements.txt...
pip freeze --local > requirements.txt
type requirements.txt | findstr /v pkg-resources
echo Disabling venv...
deactivate