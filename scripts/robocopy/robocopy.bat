@ECHO OFF

SETLOCAL

:: Adjust as needed ::
SET _source="\\<SOURCE_SERVER>\<SHARED_FOLDER>\<PATH>"
SET _dest="\\<DESTINATION_SERVER>\<SHARED_FOLDER>\PATH"

:: Options ::
SET _what=/B /E

:: Advanced Robocopy options ::
SET _options=/R:1 /W:1 /XD workDIr logs/LOG:c:\bkupscripts\Logs\Robo-Apps-Logfile.txt /NFL /NDL

ROBOCOPY %_source% %_dest% %_what% %_options%