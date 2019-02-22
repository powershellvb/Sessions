$LogContent = get-content "C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\LOG\ERRORLOG"
# IP port
([Regex]::match($logContent, "<ipv4> (\d+)"))

([Regex]::match($logContent, "<ipv4> (\d+)")).groups[1]

([Regex]::match($logContent, "<ipv4> (\d+)")).groups[1].value

# What authentication mode was our server using?
([Regex]::match($logContent, "Authentication mode is (\w+)")).groups[1].value


# SQL Server Build no
([Regex]::match($logContent, "(\d{1,2}.\d{1,2}.\d{3,4}.\d+)")).groups[1].value
