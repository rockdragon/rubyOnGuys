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