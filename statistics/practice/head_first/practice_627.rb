require_relative '../../../statistics/libs/research/regression'

array = [
    {x: 1.9, y: 22},
    {x: 2.5, y: 33},
    {x: 3.2, y: 30},
    {x: 3.8, y: 42},
    {x: 4.7, y: 38},
    {x: 5.5, y: 49},
    {x: 5.9, y: 42},
    {x: 7.2, y: 55}
]

p array
col = StatLib::Regression.new(array)
b = col.b.round(2)
puts %Q{直线表示为 Y=a+#{b}*x}
puts %Q{相关性，r = #{col.r.round(2)}}

String.puts_hr
x = 6
a = 15.8
b = 5.32
puts %Q{#{a}+#{b}*#{x} = #{StatLib::Regression.y(a, b, x) * 100}}

String.puts_hr
y = 3500 / 100
puts %Q{3500人以下，x = #{(y - a).fdiv(b).round(2)}}


