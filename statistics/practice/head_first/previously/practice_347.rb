u = 10
o = 2
x = 6
puts %Q{N(#{u}, #{o ** 2}), x=#{x}, 则 z = #{(x - u).fdiv(o)}}

u = 6.3
o = 3
x = 0.3
puts %Q{N(#{u}, #{o ** 2}), x=#{x}, 则 z = #{(x - u).fdiv(o)}}
