require_relative 'libs/distributions/binomial_distribution'
require_relative 'libs/distributions/poisson_distribution'

# 二项分布
p StatLib::BinomialDistribution.nrp(1000, 0, 0.0015).round(6)
# 松泊分布
p StatLib::PoissonDistribution.lbd_r(1000 * 0.0015, 0).round(6)