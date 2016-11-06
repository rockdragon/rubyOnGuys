require_relative '../libs/measuration'

data = [
    {x:1, px:0.1},
    {x:2, px:0.25},
    {x:3, px:0.35},
    {x:4, px:0.2},
    {x:5, px:0.1}
]

def expect(array)
  array.inject(0) { |sum, o| sum + (o[:x] * o[:px]) }
end

def var_x(array)
  ex = expect(array)
  array.inject(0) { |sum, o| sum + ((o[:x] - ex) ** 2) * o[:px]}
end

p data
p %Q{期望:            #{expect(data).round(4)} }
p %Q{方差:            #{var_x(data).round(4)} }