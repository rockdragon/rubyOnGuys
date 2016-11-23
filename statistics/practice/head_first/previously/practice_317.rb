require_relative '../../libs/distributions/poisson_distribution'

# 泊松分布 近似 二次分布:
p = 0.05
n = 50
lbd = p * n

puts %Q{50题，答对5题概率是： #{StatLib::PoissonDistribution.lbd_r(lbd, 5).round(3)}}
