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
1) Save the file restore-point.ps1 from this repo where you want
2) Install Powershell 7: 
` iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI" `
3) Right CLick on your computer/Other options/properties
4) Than clik on System Protection

![System Properties](https://drive.google.com/uc?export=view&id=1L2IAgKJytJIES8_29mTMLmh3bJbKXBCv)

5) Enable Protection for all disk you want to create previous versione

![System protection](https://drive.google.com/uc?export=view&id=1t9bBkXP--U6cvbkSDqNHSP-e_oHqJ6Rj)

6) Open Task Scheduler
7) Create a New Schedule
8) In Action (Program or script) insert: 
   
   "C:\Program Files\PowerShell\7\pwsh.exe"

9) In Arguments insert:
   
   \<YOUR-PATH-TO\>/restore-point.ps1

![Task Scheduler settings](https://drive.google.com/uc?export=view&id=1pVmG6hSyNfA9wMeN4lt3iPKozj5q1BqA)

10) Change schedule user to SYSTEM

![Task Scheduler settings](https://drive.google.com/uc?export=view&id=1Br7-EYF_hg91-eQnFKkReyyQoWMwnycy)

11) In activation tab choose when you want activate it (schedule by time or at user login)

Enjoy!!!