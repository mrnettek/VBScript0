' Description: Restores the metabase using a backup named Scripted Backup.


Const MD_BACKUP_HIGHEST_VERSION = &HFFFFFFFE 

strComputer = "LocalHost"
Set objComputer = GetObject("IIS://" & strComputer & "")

objComputer.Restore "ScriptedBackup", MD_BACKUP_HIGHEST_VERSION, 0

