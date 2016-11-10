require_relative '../../libs/measuration_group'

data = [
    {x: 1.5, px: 0.1},
    {x: 4.5, px: 0.07},
    {x: 9.5, px: 0.03},
    {x: -0.5, px: 0.8}
]

col = StatLib::Collection.new(data)

p data
p %Q{期望:            #{col.expect.round(4)} }
p %Q{方差:            #{col.var_x.round(4)} }