require 'open-uri'
require 'nkf'

url = 'http://cruel.org/freeware/cathedral.html'
filename = 'html/cathedral.html'

File.open(filename, 'w') do |io|
  text = open(url).read
  io.write text
end