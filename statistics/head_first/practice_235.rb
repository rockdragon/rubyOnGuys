require_relative '../libs/measuration_group'

data = [
    {x: 10, px: 0.2},
    {x: 15, px: 0.5},
    {x: 20, px: 0.2},
    {x: 25, px: 0.1}
]
col = StatLib::Collection.new(data)
p data
p %Q{期望:            #{col.expect.round(4)} }
p %Q{方差:            #{col.var_x.round(4)} }
String.puts_hr

data2 = [
    {x: 15, px: 0.15},
    {x: 20, px: 0.6 },
    {x: 25, px: 0.2 },
    {x: 30, px: 0.05}
]
col2 = StatLib::Collection.new(data2)
p data
p %Q{期望:            #{col2.expect.round(4)} }
p %Q{方差:            #{col2.var_x.round(4)} }