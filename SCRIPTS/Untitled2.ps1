$a=Read-Host -Prompt "Input name"
$b=Read-Host -Prompt "Output Name"

gci "C:\Users\cnayar\Documents\file.txt" -recurse | 
ForEach {
(Get-Content $_ |ForEach {$_ -replace "$a","$b"}) | Out-file "C:\Users\cnayar\Documents\file.txt"
}