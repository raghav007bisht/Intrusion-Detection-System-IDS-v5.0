#!/bin/bash

#    This file is part of Intrusion Detection System By - Raghav Bisht.
#
#    Intrusion Detection System By - Raghav Bisht is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    Intrusion Detection System By - Raghav Bisht is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>

#use netstat -anp | grep 'tcp\|udp' | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n | wc -l for seeing both tcp & udp
echo "Checking For TCP/IP Denial of Service Attack:"
while :
do
check=$(netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n|wc -l)
if  [ $check -gt 20 ]
then
echo "$(tput bold)$(tput setaf 1)"
echo "[-] TCP/IP Denial of Service Attack In Progress-------------------OK"
else
echo "[+] TCP/IP Denial of Service Attack NOT in Progress-------------------OK"
fi
sleep 3s
done
