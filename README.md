PAYPAL DONTAION  
[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.me/sistemistaitaliano/1)
# THIS REPOSITORY CONTAINES SOME POWERSHELL USEFULL SCRIPT
**First Script is: restore-point.ps1**
This script allow to do a restore point scheduled in task Scheduler

Tested on: Windows 11 (tested on 2023H2) Powershell 7
**Requirements:** Powershell 7:
You can install run this command from poershell 5

` iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI" `

How to schedule
1) Open Task Scheduler
2) Create a New Schedule
3) 3) In Action (Program or script) insert: 
   
   "C:\Program Files\PowerShell\7\pwsh.exe"

4) In Arguments insert:
   
   \<YOUR-PATH-TO\>/restore-point.ps1

<iframe src="https://drive.google.com/file/d/1pVmG6hSyNfA9wMeN4lt3iPKozj5q1BqA/preview" width="640" height="480" allow="autoplay"></iframe>

![Image Text](https://drive.google.com/uc?export=view&id=1pVmG6hSyNfA9wMeN4lt3iPKozj5q1BqA)