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

p 'hello'.length
p 'hello'.size
p '你好'.length
p '你好'.size
