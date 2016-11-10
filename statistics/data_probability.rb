require_relative 'libs/distributions/binomial_distribution'
require_relative 'libs/distributions/poisson_distribution'

# 二项分布
p StatLib::BinomialDistribution.nxp(1000, 0, 0.0015).round(6)
# 松泊分布
p StatLib::PoissonDistribution.nxp(1000, 0, 0.0015).round(6)