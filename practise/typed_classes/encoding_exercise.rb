def to_utf8(str_gbk, str_gb2312)
  str_gbk.encode('UTF-8') + str_gb2312.encode('UTF-8')
end

a = '你好'.encode('GBK')
b = '厉害'.encode('GB2312')
p a, b, to_utf8(a, b)

require 'fileutils'
FileUtils.mkdir_p('./data')
File.open('data/gbk.txt', 'w:GBK') do |io|
  io.puts('你好')
end
File.open('data/gbk.txt', 'r:GBK:UTF-8') do |io|
  puts io.read
end