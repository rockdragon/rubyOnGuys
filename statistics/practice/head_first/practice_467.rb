require_relative '../../libs/measuration'

n = 100
p = 0.25
q = 1 - p
u = p
o = Math.sqrt((p*q).fdiv(n))
x = 0.4 - 0.05
z = (x - u).fdiv(o)

puts %Q{100颗糖球中25%为红糖球，40%红糖球的概率的标准分： #{z}}
