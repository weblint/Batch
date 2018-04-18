#!/bin/sh

#-----------------------------------------------------------------------------------
#
# Dieses Programm raäumt die folgenden Prozesse auf
# Squid und Terminalfenster werden bei Bedarf wieder gestartet
#
#-----------------------------------------------------------------------------------

kill -9 `ps -aef | grep 'skype' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'oracle' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'xe_' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'modem-manager' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'gkrellmd' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'gkrellm' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'apache2' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'firefox' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'gnome-volume-control-applet' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'timer2_' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'gnome-power-manager' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'squid' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'liferea' | grep -v grep | awk '{print $2}'`
kill -9 `ps -aef | grep 'opera' | grep -v grep | awk '{print $2}'`


echo "Der Webserver und SQUID  sind zur Zeit Down...."
echo "Soll ich sie wieder starten, n/j?"
read answer
echo "Die Antwort war:" $answer
if [ "$answer" != "n" ]
  then ping -c 3 localhost >> /dev/null
       /etc/init.d/apache2 start
       /etc/init.d/squid start
       echo "Ok, ready"
       echo "Apache2 and SQUID is up and running.."
fi
echo " "
echo " "
echo "........................................."
echo " "
echo "Es sind noch einige Terminalfenster offen"
echo "Soll ich diese schliessen, n/j?"
read answer
echo "Die Antwort war:" $answer
echo " "

echo "Ready"
ping -c 3 localhost >>/dev/null
top
if [ "$answer" != "n" ]
  then ping -c 3 localhost >>/dev/null
       kill -9 `ps -aef | grep 'bash' | grep -v grep | awk '{print $2}'`
       echo "Ok, ready"
fi
