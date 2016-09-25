require 'net/http'
require 'uri'
url = URI.parse('http://www.moye.me/')
http = Net::HTTP.start(url.host, url.port)
doc = http.get(url.path)
puts doc.body