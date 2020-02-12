#J.Power This Script looks at Windows 10 build/release ID then installed LSU accourding to build number currentl does 1709-1909. FOR x64-based CPUs only. To adapt for other KB you have to find the links from MS. 

#check to see if update was installed for each KB build of windows if null the proceed
$updatecheck = wmic qfe list full /format:table | findstr /i "4528760 4534293 4534273 4534276"

if ( $updatecheck -eq $null ) 
{ 


			$algorithm = "sha1" #this sets the Hash to check against
			$path = "C:\script\" #Check if dir exists,create if needed skip if this is creaetd already
			If(!(test-path $path))
				{
					New-Item -ItemType Directory -Force -Path $path
				}
	#check verision 1909 etc 
	$OSVersion = (get-itemproperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" -Name ReleaseId).ReleaseId
	
	
	switch ($OSVersion)
	{
    "1903" #this is checked against the var OSVersion
		{ 	$checksum = "4EA59B94564145460AB025616FF10460BB7894D8"
			$file = "C:\script\windows10.0-kb4528760-x64_4ea59b94564145460ab025616ff10460bb7894d8.msu"
			
		if (Test-Path $file ) 
			{ 
				$hash  = (Get-FileHash $file -Algorithm $algorithm).hash
				if ($hash -eq $checksum) 
				{
					wusa.exe $path\windows10.0-kb4528760-x64_4ea59b94564145460ab025616ff10460bb7894d8.msu /quiet /norestart
					Write-host
					Write-Host " 1903 files is downloaded installing!"
					Write-Host
					Write-Host((Get-Item $file).length/1MB)
				} 
			
			Else {
            write-host
            write-host "Download not complete 1903 " 
            Write-host
			Write-Host((Get-Item $file).length/1MB)
				}
			}
		Else { 
		write-host
		write-host "ERROR: File does not exist." 
		Write-host
		Break
			}
    
									#LCU 1903-1909 KB4528760
									#$Web = New-Object System.Net.WebClient
									#$Web.DownloadFile("http://download.windowsupdate.com/d/msdownload/update/software/secu/2020/01/windows10.0-kb4528760-x64_4ea59b94564145460ab025616ff10460bb7894d8.msu","$path\windows10.0-kb4528760-x64_4ea59b94564145460ab025616ff10460bb7894d8.msu")
									#wusa.exe $path\windows10.0-kb4528760-x64_4ea59b94564145460ab025616ff10460bb7894d8.msu /quiet /norestart
			
	}
    "1909"
		{ 	$checksum = "4EA59B94564145460AB025616FF10460BB7894D8"
		    $file = "C:\script\windows10.0-kb4528760-x64_4ea59b94564145460ab025616ff10460bb7894d8.msu"
			
		if (Test-Path $file ) 
			{ 
				$hash  = (Get-FileHash $file -Algorithm $algorithm).hash
				if ($hash -eq $checksum) 
				{
					wusa.exe $path\windows10.0-kb4528760-x64_4ea59b94564145460ab025616ff10460bb7894d8.msu /quiet /norestart
					Write-host
					Write-Host  " 1909 files is downloaded installing!"
					Write-Host
					Write-Host((Get-Item $file).length/1MB)
				} 
			
			Else {
            write-host
            write-host " 1909 Download not complete" 
            Write-host
			Write-Host((Get-Item $file).length/1MB)
				}
			}
		Else { 
		write-host
		write-host "ERROR: File does not exist." 
		Write-host
		Break
			}
			#LCU 1903-1909 KB4528760
			#$Web = New-Object System.Net.WebClient
			#$Web.DownloadFile("http://download.windowsupdate.com/d/msdownload/update/software/secu/2020/01/windows10.0-kb4528760-x64_4ea59b94564145460ab025616ff10460bb7894d8.msu","$path\windows10.0-kb4528760-x64_4ea59b94564145460ab025616ff10460bb7894d8.msu")
			#wusa.exe $path\windows10.0-kb4528760-x64_4ea59b94564145460ab025616ff10460bb7894d8.msu /quiet /norestart
		}
    "1803"
		{	$checksum = "af7ad26642b7c49788d70902f1918b9b234292cf"
			$file = "C:\script\windows10.0-kb4534293-x64_af7ad26642b7c49788d70902f1918b9b234292cf.msu"
			
		if (Test-Path $file ) 
			{ 
				$hash  = (Get-FileHash $file -Algorithm $algorithm).hash
				if ($hash -eq $checksum) 
				{
					wusa.exe $path\windows10.0-kb4534293-x64_af7ad26642b7c49788d70902f1918b9b234292cf.msu /quiet /norestart
					Write-host
					Write-Host " 1803 files is downloaded installing!"
					Write-Host
					Write-Host((Get-Item $file).length/1MB)
				} 
			
			Else {
            write-host
            write-host "Download not complete 1803 " 
            Write-host
			Write-Host((Get-Item $file).length/1MB)
				}
			}
		Else { 
		write-host
		write-host "ERROR: File does not exist." 
		Write-host
		Break
			}
			#1803-LCU  KB4534293
			#$Web = New-Object System.Net.WebClient
			#$Web.DownloadFile("http://download.windowsupdate.com/c/msdownload/update/software/secu/2020/01/windows10.0-kb4534293-x64_af7ad26642b7c49788d70902f1918b9b234292cf.msu","$path\windows10.0-kb4534293-x64_af7ad26642b7c49788d70902f1918b9b234292cf.msu")
			#wusa.exe $path\windows10.0-kb4534293-x64_af7ad26642b7c49788d70902f1918b9b234292cf.msu /quiet /norestart
		}
    "1809"
		{	$checksum = "74bf76bc5a941bbbd0052caf5c3f956867e1de38"
			$file = "C:\script\windows10.0-kb4534273-x64_74bf76bc5a941bbbd0052caf5c3f956867e1de38.msu"
			
		if (Test-Path $file ) 
			{ 
				$hash  = (Get-FileHash $file -Algorithm $algorithm).hash
				if ($hash -eq $checksum) 
				{
					wusa.exe $path\windows10.0-kb4534273-x64_74bf76bc5a941bbbd0052caf5c3f956867e1de38.msu /quiet /norestart
					Write-host
					Write-Host " 1809 files is downloaded installing!"
					Write-Host
					Write-Host((Get-Item $file).length/1MB)
				} 
			
			Else {
            write-host
            write-host "Download not complete 1809 " 
            Write-host
			Write-Host((Get-Item $file).length/1MB)
				}
			}
		Else { 
		write-host
		write-host "ERROR: File does not exist." 
		Write-host
		Break
			}
			 #1809-LCU  kb4534273
			#$Web = New-Object System.Net.WebClient
			#$Web.DownloadFile("http://download.windowsupdate.com/d/msdownload/update/software/secu/2020/01/windows10.0-kb4534273-x64_74bf76bc5a941bbbd0052caf5c3f956867e1de38.msu","$path\windows10.0-kb4534273-x64_74bf76bc5a941bbbd0052caf5c3f956867e1de38.msu")
			#wusa.exe $path\windows10.0-kb4534273-x64_74bf76bc5a941bbbd0052caf5c3f956867e1de38.msu /quiet /norestart
		}
	"1709"
		{	$checksum = "0ef8f7279a888b2243bf02a1a4a8ab92fac5131f"
			$file = "C:\script\windows10.0-kb4534276-x64_0ef8f7279a888b2243bf02a1a4a8ab92fac5131f.msu"
			
		if (Test-Path $file ) 
			{ 
				$hash  = (Get-FileHash $file -Algorithm $algorithm).hash
				if ($hash -eq $checksum) 
				{
					wusa.exe $path\windows10.0-kb4534276-x64_0ef8f7279a888b2243bf02a1a4a8ab92fac5131f.msu /quiet /norestart
					Write-host
					Write-Host " 1709 files is downloaded installing!"
					Write-Host
					Write-Host((Get-Item $file).length/1MB)
				} 
			
			Else {
            write-host
            write-host "Download not complete 1709 " 
            Write-host
			Write-Host((Get-Item $file).length/1MB)
				}
			}
		Else { 
		write-host
		write-host "ERROR: File does not exist." 
		Write-host
		Break
			}
			 #	2019-11 Servicing Stack Update for Windows 10 Version 1709 for x64-based Systems (KB4523202)
			#$Web = New-Object System.Net.WebClient
			#$Web.DownloadFile("http://download.windowsupdate.com/c/msdownload/update/software/secu/2020/01/windows10.0-kb4534276-x64_0ef8f7279a888b2243bf02a1a4a8ab92fac5131f.msu","$path\windows10.0-kb4534276-x64_0ef8f7279a888b2243bf02a1a4a8ab92fac5131f.msu")
			#wusa.exe $path\windows10.0-kb4534276-x64_0ef8f7279a888b2243bf02a1a4a8ab92fac5131f.msu /quiet /norestart
		}
	
	}

}
 Else 
 { write-host $updatecheck
 }
