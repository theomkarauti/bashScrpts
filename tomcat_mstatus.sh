#!/bin/bash
lport= netstat -nlpt | grep -w ':::8080' | awk '{print $4}' | wc -l
nport=1

#nport=$lport
#lport=1
nport=1

echo $nport
echo $lport
if [ $lport == $nport ]
then
   echo "Tomcat Active"
else
   echo "Tomcat Deactive"
fi