require_relative '../../../statistics/libs/distributions/binomial_distribution'

p = 0.25
n = 40

u = n * p
o = Math.sqrt(n * p * (1 - p))
z = (30 - u).fdiv(o)
puts %Q{标准分： #{z}}