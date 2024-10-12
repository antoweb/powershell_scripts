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
1) Install Powershell 7: 
` iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI" `
2) Right CLick on your computer/Other options/properties

![System Properties]https://drive.google.com/file/d/1L2IAgKJytJIES8_29mTMLmh3bJbKXBCv/view?usp=sharing

3) Open Task Scheduler
4) Create a New Schedule
5) 3) In Action (Program or script) insert: 
   
   "C:\Program Files\PowerShell\7\pwsh.exe"

6) In Arguments insert:
   
   \<YOUR-PATH-TO\>/restore-point.ps1

![Task Scheduler settings](https://drive.google.com/uc?export=view&id=1pVmG6hSyNfA9wMeN4lt3iPKozj5q1BqA)
