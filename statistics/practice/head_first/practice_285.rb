require_relative '../../libs/distributions/geometric_distribution'

q = 0.6
p = 1 - q
puts %Q{第1次失败,第2次成功的概率 #{StatLib::GeometryDistribution.qr(q, 2)}}
String.puts_hr

puts %Q{ <=4次成功的概率  #{StatLib::GeometryDistribution.qr_lte(q, 4).round(4)}}
String.puts_hr

puts %Q{ >4次成功的概率  #{StatLib::GeometryDistribution.qr_gt(q, 4).round(4)}}
String.puts_hr

puts %Q{ 期望成功的次数  #{StatLib::GeometryDistribution.ex(p).round(4)}}
String.puts_hr

puts %Q{ 方差  #{StatLib::GeometryDistribution.var(q).round(4)}}
