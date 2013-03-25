require 'socket'
#load 'twitter.rb'
puts 'before socket'

#s = TCPSocket.new 'dxc.ab5k.net', 7373
s = TCPSocket.new 'dxc.nc7j.com', 7373

# telnet requires submitting call sign
s.puts( 'ke7kxi' )

# 6 meter freq range
reg = /5[0-9]\d\d\d\.\d/  

# 20 meter freq range
#reg = /14\d\d\d\.\d/  

# 12 meter freq range
#reg = /21\d\d\d\.\d/  

# 10 meter freq range
#reg = /2[8-9]\d\d\d\.\d/  

# Read lines from socket
while line = s.gets
  # only ouput lines that match
  if reg.match(line) then
    puts line.gsub(/\s+/, " ")
    #t = Tweet.new(line.gsub(/\s+/, " "))
    #t.this
  end
end

s.close             # close socket when done
