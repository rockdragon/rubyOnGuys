def pb(i)
  printf("%08b\n", i & 0b11111111)
end

b = 0b11110000
pb(b)
pb(~b)
pb(b & 0b00010001)
pb(b | 0b00010001)
pb(b ^ 0b00010001)
pb(b >> 3)
pb(b << 3)

class Rand
  def initialize(seed = Math::E)
    @r = Random.new(seed)
  end

  def rand(i = Random.rand)
    @r.rand(i)
  end
end

r = Rand.new
5.times do
  puts r.rand(100)
end


def cels2fahr(cels)
  cels * 9 / 5 + 32
end
puts cels2fahr(32)

require 'bigdecimal'
big_decimal =  BigDecimal.new((Math::E ** 100).to_s)
puts big_decimal, big_decimal.class