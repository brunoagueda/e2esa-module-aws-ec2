<powershell>

$temp_path = "C:\Users\Public\Documents\"

$logMsg = "hostname da ec2: "

$logMsg | Out-File $temp_path"log.txt"

$logMsg2 = "hostname da ec2: " + ${$runner_user}

$logMsg2 | Out-File $temp_path"log2.txt"

</powershell>