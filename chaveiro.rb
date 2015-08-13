#!/usr/bin/ruby
#encoding: UTF-8

puts """
 _______ _     _ _______ _    _ _______ _____  ______  _____ 
 |       |_____| |_____|  \\  /  |______   |   |_____/ |     |
 |_____  |     | |     |   \\/   |______ __|__ |    \\_ |_____|

 #Coded by: Elfo - UserX - n3k00n3 
 #LampiãoSec - Security Research Group
                                                             
"""

require 'socket'
require 'timeout'

print "IP Address: "
ip = gets.chomp

ports=1..65535
ports.each do |scan|

#we need to find a solution here.
#getPorts = []
#@getPorts = getPorts

count = 1

begin
   Timeout::timeout(10){TCPSocket.new("#{ip}", scan)}
   rescue
      puts "closed:#{scan}"
   else
      puts "------------------------"
      puts "open door:#{scan}"
      puts "------------------------"
      sleep 3
   end

end

puts "Done!!!"


