require_relative '../../libs/measuration_group'

data = [
    {x:-2, px:0.977},
    {x:23, px:0.008},
    {x:48, px:0.008},
    {x:73, px:0.006},
    {x:98, px:0.001}
]

col = StatLib::Collection.new(data)

p data
p %Q{期望:            #{col.expect.round(4)} }
p %Q{方差:            #{col.var_x.round(4)} }