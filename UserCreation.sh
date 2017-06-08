#!/bin/bash
#Script to create Users

IFS='\n'

for x in `cat /c/Users/rgu117/Documents/scripts/Users.txt`
do
	u=$(echo $x| cut -f1)
	p=$(echo $x| cut -f2)
	#curl -u admin:123456 -FcreateUser= -FauthorizableId=$u -Frep:password=$p http://localhost:4502/libs/granite/security/post/authorizables
	curl -u admin:123456 -FcreateUser= -FauthorizableId=$u -Frep:password=$p -Fmembership=contributor http://localhost:4502/libs/granite/security/post/authorizables
 done
 
 
	
 
