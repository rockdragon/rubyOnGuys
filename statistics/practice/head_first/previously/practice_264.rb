require_relative '../../libs/exts/lib'

n = 12
r = 5
p '选5人上场'
p %Q{C(#{n}, #{r}) :            #{Lib.combination(n, r)} }
String.puts_hr

p '随机选三名主力'
p %Q{C(#{n}, 3) :            #{Lib.combination(9, 2)} }
p %Q{3人同时在场,即从9人中选2人 :        #{Lib.combination(9, 2).fdiv(Lib.combination(n, r)).round(4) } }