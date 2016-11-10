require_relative '../../libs/measuration_group'

data = [
    {x:1, px:0.1},
    {x:2, px:0.25},
    {x:3, px:0.35},
    {x:4, px:0.2},
    {x:5, px:0.1}
]

col = StatLib::Collection.new(data)

p data
p %Q{期望:            #{col.expect.round(4)} }
p %Q{方差:            #{col.var_x.round(4)} }