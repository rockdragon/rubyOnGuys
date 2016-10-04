hello = proc do |name|
  puts "hello #{name}"
end
hello.call('fucker')

leap = proc do |year|
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end
p leap.call(2000)
p leap[1998]
p leap[2016]

def power_of(n)
  -> (x) { x ** n } # lambda do |x| x ** n end
end

power_of_3 = power_of(3)
p power_of_3.lambda?
p power_of_3.call(3)

def total2(from, to, &block)
  result = 0
  from.upto(to) do |num|
    if block
      result += block.call(num) # yield num
    else
      result += num
    end
  end
  result
end

p total2(1, 10)
p total2(1, 10) { |num| num * 2 }

p %w(42 39 56).map(&:to_i)
p [Integer, String, Array, Hash, File, IO].sort_by(&:name)

def counter
  c = 0
  Proc.new do
    c += 1
  end
end
c = counter
p c.call
p c.call
p c.call
p c.arity
p c.parameters
p c.lambda?
p c.source_location