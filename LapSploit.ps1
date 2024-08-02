$results = ([adsisearcher]'(ms-MCS-AdmPwd=*)').FindAll() | select -ExpandProperty properties 
foreach ($computer in $results){
$username=$computer.cn + "\Administrator"
$pass=$computer.'ms-mcs-admpwd'
$secpass = ConvertTo-SecureString $pass -AsPlainText -force
$cred=new-object System.Management.Automation.PSCredential( $username, $secpass)
$job = invoke-command -ComputerName $computer.cn -ScriptBlock {hostname} -Credential $cred -AsJob 
$timeout=10
$do = $job | wait-job -timeout $timeout
}



