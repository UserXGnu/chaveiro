#!/usr/bin/ruby
# Lampiao Sec Team

require 'socket'
require 'timeout'

print "IP Address: "
ip = gets.chomp

ports=1..15000
ports.each do |scan|

#Ver uma solução Alex
#pegaPortas = []
#@pegaPortas = pegaPortas

conta = 1

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

puts "Finalizado!"

sleep 1
puts "LAMPIAOSEC TEAM"
