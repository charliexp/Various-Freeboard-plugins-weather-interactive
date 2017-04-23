#!/usr/bin/perl
# get total arg passed to this script
BEGIN { print "Content-type: text/plain\n\n"; }
#use strict; 
#   MQTT Server setting and base topic
$ip = "192.168.168.150";
$port= "1883";
$tp = "/ID/";

if ($#ARGV < 0) {
   
    print "You have not provided any arguments \n";
    exit;
}

$arg1 = $ARGV[0];
$arg2 = $ARGV[1];
#$arg3 = $ARGV[2];

if ($#ARGV < 1) {
    $arg2 = $arg1;
   $arg1 = $tp;
   

}


print "\n Output:\n---------\n";
print "> MQTT Server: $ip\n\n";
print "> MQTT TOPIC: $arg1\n\n";
print "> MQTT DATA: $arg2\n\n";


system("mosquitto_pub -h $ip -p $port -t $arg1 -m $arg2");