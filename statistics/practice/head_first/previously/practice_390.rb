require_relative '../../../statistics/libs/distributions/binomial_distribution'

n = 12
p = 0.5

puts %Q{P(X < 6) 其中 X~B(12, 0.5)}

String.puts_hr
puts %Q{二次分布求解}
total = 0.0
(0..5).each do |r|
  bp = StatLib::BinomialDistribution.nrp(n, r, p)
  puts %Q{P(X = #{r}) #{bp}}
  total+= bp
end
puts %Q{总概率：   #{total}}

String.puts_hr
puts %Q{正态分布求解}

u = n * p
o = Math.sqrt(n * p * (1 - p))
z = (5.5 - u).fdiv(o) # 5.5代表“连续性修正”
puts %Q{标准分： #{z}}