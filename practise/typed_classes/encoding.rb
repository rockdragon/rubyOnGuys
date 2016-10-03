str = "こんにちは"
p str.encoding

str2 = str.encode("EUC-JP")
p str2.encoding

p Encoding.compatible?(str, str2)

p Encoding.default_external
p Encoding.default_internal
p Encoding.find('ascii')

p Encoding.list
p Encoding.name_list

str = [127, 0, 0, 1].pack("C4")
p str
p str.encoding

File.open('./file_dir.rb') do |io|
  p io.external_encoding
  p io.internal_encoding
end

str3 = "ビ"
puts "size: #{str3.size}"
p str3.each_byte.map{|b| b.to_s(16)}
puts "size: #{str3.encode("UTF8-MAC").size}"
p str3.encode("UTF8-MAC").each_byte.map{|b| b.to_s(16)}