set batPath=C:\Users\user_name\any_paths\update_repos.bat
set repoPath=C:\any_paths

schtasks /create /tn svn_auto_update /tr "%batPath% %repoPath%" /sc hourly /mo 2 /st 08:10:00 /du 12:00

rem �e�X�g�p�R�}���h
rem schtasks /run /tn svn_auto_update


rem �^�X�N�폜�p�R�}���h
rem schtasks /delete /tn snv_auto_update