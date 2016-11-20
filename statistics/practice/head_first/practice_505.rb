require_relative '../../../statistics/libs/research/confidence_interval'

n = 50
p = 0.25
level = 0.99

puts %Q{二项分布 [n=#{n}, p=#{p}, level=#{level}] 的置信区间： #{StatLib::ConfidenceInterval.binominal(p, n, level)}}
