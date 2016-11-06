require_relative '../libs/measuration'

data = [
    {x:-2, px:0.977},
    {x:23, px:0.008},
    {x:48, px:0.008},
    {x:73, px:0.006},
    {x:98, px:0.001}
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