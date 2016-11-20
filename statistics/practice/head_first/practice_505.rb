require_relative '../../../statistics/libs/research/confidence_interval'

n = 50
p = 0.25
level = 0.99

puts '置信水平越高,区间越宽'
String.puts_hr

puts %Q{二项分布 [n=#{n}, p=#{p}, level=#{level}] 的置信区间： #{StatLib::ConfidenceInterval.binominal(p, n, level)}}

level = 0.95
puts %Q{二项分布 [n=#{n}, p=#{p}, level=#{level}] 的置信区间： #{StatLib::ConfidenceInterval.binominal(p, n, level)}}

level = 0.90
puts %Q{二项分布 [n=#{n}, p=#{p}, level=#{level}] 的置信区间： #{StatLib::ConfidenceInterval.binominal(p, n, level)}}
