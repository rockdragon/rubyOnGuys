require_relative '../../../statistics/libs/distributions/x2_distribution'

array = [
    {o: 107, e: 167},
    {o: 198, e: 167},
    {o: 192, e: 167},
    {o: 125, e: 167},
    {o: 132, e: 167},
    {o: 248, e: 167}
]

p array
puts %Q{卡方分布检验统计量 #{StatLib::X2Distribution.x2(array).round(4)}}

