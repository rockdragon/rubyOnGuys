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