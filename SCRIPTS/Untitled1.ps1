$list=dir C:\Users\cnayar\Desktop\users.txt 

foreach($line in Get-Content $list) {
    if($line)
    {
       echo $line
       echo "found" 
       }
  
}