require_relative '../../../statistics/libs/research/regression'

array = [

    {x: 4.0, y: 12},
    {x: 4.5, y: 10},
    {x: 5.0, y: 8},
    {x: 5.5, y: 9.5},
    {x: 6.0, y: 8},
    {x: 6.5, y: 9},
    {x: 7.0, y: 6}
]

p array
col = StatLib::Regression.new(array)
b = col.b.round(2)
a = col.a.round(2)
x = 5
x_ = col.average(:x).round(2)
y_ = col.average(:y).round(2)
puts %Q{x均：#{x_}, y均：#{y_}}
puts %Q{直线表示为 Y=a+#{b}*x}
puts %Q{相关性，r = #{col.r.round(2)}}
puts %Q{系数，a = #{a}, b = #{b}}
puts %Q{照射5分钟，y = #{StatLib::Regression.y(a, b, x).round(2)}}




