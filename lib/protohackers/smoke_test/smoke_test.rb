#!/usr/bin/env ruby

require 'socket'

puts '[*] Waiting for connections...'
Socket.tcp_server_loop('0.0.0.0', 8080) do |conn|
  Thread.new do
    data, * = conn.recvmsg
    puts "[*] Connection received! [#{data}]"
    conn.write data
    conn.close
  end
end
