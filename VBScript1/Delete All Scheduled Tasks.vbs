' Description: Deletes all the scheduled tasks on a computer. Note: WMI can only delete scheduled tasks created using the Win32_ScheduledJob class or the At.exe utility. It cannot delete tasks created using the Task Scheduler.


strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colScheduledTasks = objWMIService.ExecQuery _
    ("Select * from Win32_ScheduledJob")

For Each objTask in colScheduledTasks
    intJobID = objTask.JobID
    Set objInstance = objWMIService.Get _
        ("Win32_ScheduledJob.JobID=" & intJobID)
    objInstance.Delete
Next

