require_relative 'libs/probability'

# 二项分布
p StatLib::Propability.binomial_distribution(1000, 0, 0.0015).round(6)
# 松泊分布
p StatLib::Propability.poisson_distribution(1000, 0, 0.0015).round(6)