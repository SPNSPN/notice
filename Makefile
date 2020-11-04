CSC := '/mnt/c/Windows/Microsoft.NET/Framework64/v4.0.30319/csc.exe'
LIB := 'C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319,C:\\Windows\Microsoft.NET\\assembly\\GAC_MSIL'

Notice.exe: Notice.cs
	$(CSC) /lib:$(LIB) /reference:"C:\\Program Files (x86)\\Reference Assemblies\\Microsoft\\Framework\\.NETFramework\\v4.6.1\\Facades\\System.Runtime.dll" /reference:"C:\\Program Files (x86)\\Windows Kits\\10\\Unionmetadata\\10.0.17134.0\\Windows.winmd" Notice.cs

.PHONY: clean
clean:
	rm Notice.exe
