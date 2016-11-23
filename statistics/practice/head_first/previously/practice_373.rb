u1 = 71
o1 = 20.25

u2 = 64
o2 = 16

u = u1 - u2
o = Math.sqrt(o1 + o2)
x = 5
puts %Q{N(#{u}, #{o ** 2}), x=#{x}, 则 z = #{(x - u).fdiv(o)}}






