@ECHO OFF&PUSHD %~DP0 &TITLE �̻���ѡ��
mode con cols=36 lines=20
color 2F

:Menu
Cls
@ echo.
@ echo.���������� �� �� ѡ ��
@ echo.
@ echo.     �̻�[����] �� ������1
@ echo.
@ echo.
@ echo.     ж�� �� ������2
@ echo.
set /p xj= �������ְ��س���
if /i "%xj%"=="1" Goto Install
if /i "%xj%"=="2" Goto Uninstall
@ echo.
echo      ѡ����Ч������������
ping -n 2 127.1>nul 
goto menu
:Install
@ echo.
ECHO ���������ڰ�װ��..���Ե�..
taskkill /f /im Photoshop*>NUL 2>NUL
reg add "HKCR\.psd" /f /v "" /d "Photoshop.Image.13"  >nul 2>nul
reg add "HKCR\Photoshop.Image.13" /f /v "" /d "Adobe Photoshop"  >nul 2>nul
reg add "HKCR\Photoshop.Image.13\DefaultIcon" /f /v "" /d "%~dp0Adobe Photoshop CS6\Photoshop.exe,1"  >nul 2>nul
reg add "HKCR\Photoshop.Image.13\shell\open\command" /f /v "" /d \""%~dp0Adobe Photoshop CS6\Photoshop.exe\" \"%%1\"
reg add "HKCR\Applications\Photoshop.exe\shell\open\command" /f /v "" /d \""%~dp0Adobe Photoshop CS6\Photoshop.exe\" \"%%1\"
reg add "HKCR\pngfile\shell\EdtPSCS6" /f /v "" /d "�� Adobe Photoshop CS6 �༭"  >nul 2>nul
reg add "HKCR\pngfile\shell\EdtPSCS6\command" /f /v "" /d \""%~dp0Adobe Photoshop CS6\Photoshop.exe\" \"%%1\"
reg add "HKCR\jpegfile\shell\EdtPSCS6" /f /v "" /d "�� Adobe Photoshop CS6 �༭"  >nul 2>nul
reg add "HKCR\jpegfile\shell\EdtPSCS6\command" /f /v "" /d \""%~dp0Adobe Photoshop CS6\Photoshop.exe\" \"%%1\"
reg add "HKCR\giffile\shell\EdtPSCS6" /f /v "" /d "�� Adobe Photoshop CS6 �༭"  >nul 2>nul
reg add "HKCR\giffile\shell\EdtPSCS6\command" /f /v "" /d \""%~dp0Adobe Photoshop CS6\Photoshop.exe\" \"%%1\"
reg add "HKCR\bmpfile\shell\EdtPSCS6" /f /v "" /d "�� Adobe Photoshop CS6 �༭"  >nul 2>nul
reg add "HKCR\Paint.Picture\shell\EdtPSCS6\command" /f /v "" /d \""%~dp0Adobe Photoshop CS6\Photoshop.exe\" \"%%1\"
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\Photoshop.lnk""):b.TargetPath=""%~sdp0Adobe Photoshop CS6\Photoshop.exe"":b.WorkingDirectory=""%~dp0"":b.Save:close")
goto fanhui
:Uninstall
@ echo.
echo ����������ж����..���Ե�..
taskkill /f /im Photoshop*>NUL 2>NUL
reg delete "HKCR\.psd" /F>NUL 2>NUL
reg delete "HKCR\Photoshop.Image.13" /F>NUL 2>NUL
reg delete "HKCR\Applications\Photoshop.exe\shell\open\command" /F>NUL 2>NUL
reg delete "HKCR\pngfile\shell\EdtPSCS6" /F>NUL 2>NUL
reg delete "HKCR\jpegfile\shell\EdtPSCS6" /F>NUL 2>NUL
reg delete "HKCR\giffile\shell\EdtPSCS6" /F>NUL 2>NUL
reg delete "HKCR\bmpfile\shell\EdtPSCS6" /F>NUL 2>NUL
del /f/q "%userprofile%\Desktop\Photoshop.lnk" >nul 2>nul
del /f/q "%userprofile%\����\Photoshop.lnk" >nul 2>nul
del /f/q "%public%\Desktop\Photoshop.lnk" >nul 2>nul
del /f/q "%public%\����\Photoshop.lnk" >nul 2>nul
goto Uninstall2
:fanhui
@ ECHO.
ECHO �������̻����..
ping -n 2 127.8>nul
exit
:Uninstall2
@ ECHO.
ECHO ������ж�����..
ping -n 2 127.8>nul
exit
