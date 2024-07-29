This is a tool to exploit the Local Administrator Password Solution in order to perform commands on all hosts that your user has LAPS admin permissions for. These commands will run as the Local Administrator on each box. 

# Prerequisites
This exploit uses adsisearcher and invoke-command, so it is quite portable. It doesn't require the ADMPWD.PS module to be installed or imported. This exploit will only run in environments where LAPS is implemented and where you have the right to read the ms-MCS-admpwd. 

## Usage
The script takes a hardcoded scriptblock and runs it on all of the LAPS hosts. Simply change the scriptblock. Currently it has "hostname" for testing purposes.


