require_relative '../../libs/exts/lib'

n = 52
r = 5
p '选一手,5张:'
p %Q{C(#{n}, #{r}) :            #{Lib.combination(n, r)} }
String.puts_hr

p %Q{拿10-K同花顺概率 :        #{4.fdiv(Lib.combination(n, r))} }
String.puts_hr

p %Q{拿到炸的概率 :            #{(13 * Lib.combination(n - 4, 1)).fdiv(Lib.combination(n, r))} }
String.puts_hr

p %Q{五张同花概率 :            #{(4 * Lib.combination(13, 5)).fdiv(Lib.combination(n, r)) } }