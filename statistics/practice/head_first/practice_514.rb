require_relative '../../../statistics/libs/research/confidence_interval'

t = 2.262
x = 0.5
s = Math.sqrt(0.09)
n = 10

puts %Q{T分布 [x=#{x}, s=#{s}, n=#{}, t=#{t}] 的置信区间： #{StatLib::ConfidenceInterval.t_interval(x, s, n, t)}}
