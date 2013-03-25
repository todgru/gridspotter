require "socket"

if FALSE then
  myserver = TCPServer.new('localhost', 0)
  sockaddr = myserver.addr
  puts "Echo server running on #{sockaddr.join(':')}"
  while true
    Thread.start(myserver.accept) do |sock|
      puts("#{sock} connected at #{Time.now}")
      while sock.gets
        sock.write($_)
        puts "User entered: #{$_}"
      end
      puts("#{sock} disconnected at #{Time.now}")
      s.close
    end
  end
else

  # serve content

  myserver = TCPServer.new( 'localhost', 12345 )
  sockaddr = myserver.addr

  # while true
  while true
    Thread.start(myserver.accept) do |sock|
      puts("#{sock} connected at #{Time.now}")
      print("Connecting...")
      clientsock = TCPSocket.open( 'dxc.ab5k.net', 7373 )
      print(" done\n")
      puts("Connected from #{clientsock.addr[2]} 
      to #{clientsock.peeraddr[2]}")
      clientsock.puts ( 'ke7kxi')
      while ( telnet = clientsock.gets )
        print( telnet )
        sock.write( telnet )
      end
      while sock.gets
        sock.write( telnet )
      end
      puts("#{sock} disconnected at #{Time.now}")
      s.close
    end
  end

  clientsock.close
end
