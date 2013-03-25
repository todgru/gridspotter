require 'socket'
myserver = TCPServer.new('localhost', 0)
#myserver = TCPServer.new 2000
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
