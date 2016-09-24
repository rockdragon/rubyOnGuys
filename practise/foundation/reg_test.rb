require './utils'

pattern = /[^\d]+(.*)?/
user_agent = 'Android5.1.1'

puts match(pattern, user_agent)

$x = 10
x = 20
CONST = 30
@instance = 50

def print_mult(a, b, c, d)
  puts "global: #{a}"
  puts "local: #{b}"
  puts "CONST: #{c}"
  puts "@instance: #{c}"
end

print_mult($x, x, CONST, @instance)

$x, x, @instance = 4, 3, 2
print_mult($x, x, CONST, @instance)

ary = [1, 2, '3']
a, b, c = ary
p "#{a}, #{b}, #{c}"