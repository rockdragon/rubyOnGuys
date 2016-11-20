require_relative '../../../statistics/libs/research/confidence_interval'

n = 30
x = 15
s = Math.sqrt(15) # 柏松分布的方差即ex(X)
level = 0.99

puts %Q{泊松分布 [x=#{x}, s=#{s}, n=#{n}, level=#{level}] 的置信区间： #{StatLib::ConfidenceInterval.interval(x, s, n, level)}}

