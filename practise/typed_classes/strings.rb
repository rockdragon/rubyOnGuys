moji = '字符串'
str1 = "那也是 #{moji}"
p str1

str = <<-EOB
Hello!
Hello!
Hello!
EOB
print str

# magic
puts `ls -l`
s = %w(holy crap).join
p s << '!'

3.times do |i|
  3.times do |j|
    print(<<"EOB")
i: #{i}
j: #{j}
i*j = #{i*j}
EOB
  end
end

p 'hello'.size
p 'hello'.bytesize
p '你好'.size
p '你好'.bytesize

desc = %Q{Ruby 的字符串中也可以使用'' 和""。}
p desc

str = "高桥:gaoqiao:1234567:000-123-4567"
column = str.split(/:/)
p column
p str.slice!(2, 5)
p str

str = "壹\n 贰\n 叁\n"
tmp = str.each_line.collect do |line|
  line.chomp
end
p tmp

str222 = "AA\nBB\nCC\n"
p str222.each_line.class
p str222.each_line.map{|line| line.chop }

p "ABCDE".tr("B", "b")
p "ABCDE".tr("BD", "bd")
p "ABCDE".tr("A-E", "a-e")

p 'Ruby is an object oriented programming language'.split(/\s/)