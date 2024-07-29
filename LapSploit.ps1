$results = ([adsisearcher]'(ms-MCS-AdmPwd=*)').FindAll() | select -ExpandProperty properties 
foreach ($computer in $results){
$username=$computer.cn + "\Administrator"
$pass=$computer.'ms-mcs-admpwd'
$secpass = ConvertTo-SecureString $pass -AsPlainText -force
$cred=new-object System.Management.Automation.PSCredential( $username, $secpass)
invoke-command -computername $computer.cn -ScriptBlock {hostname} -Credential $cred
}
