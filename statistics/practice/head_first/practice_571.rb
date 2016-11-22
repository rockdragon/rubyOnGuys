require_relative '../../../statistics/libs/distributions/x2_distribution'

array = [
    {o: 965, e: 977},
    {o: 10, e: 8},
    {o: 9, e: 8},
    {o: 9, e: 6},
    {o: 7, e: 1}
]

p array
puts %Q{卡方分布检验统计量 #{StatLib::X2Distribution.x2(array).round(4)}}

