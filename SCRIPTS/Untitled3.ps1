$myString= Get-content C:\Users\cnayar\Desktop\users1.txt
foreach($line in $myString)
{
$a,$b = $line.split(',')

$username = $a
echo "username is:"$username
$password = $b
echo "password is:"$password 
net user /add $username $password
wmic useraccount where "name = '$username'" set passwordexpires = false

}