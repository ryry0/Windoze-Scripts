REM Remove files older than 30 days
forfiles /p "C:\Users\Ryan\Desktop\Local Dump" /s /m *.* /c "cmd /c Del @path" /d -30