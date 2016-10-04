t = Time.new
p t
puts t.strftime('%Y-%m-%d %H:%M:%S %Z %z')

require 'time'
t2 = Time.parse('2016-10-04 10:00:00')
p t2

require 'date'
d = Date.today
p d
d2 = Date.new(2016, 10, 1)
p d2
p d - d2
puts d2.strftime('%Y-%m-%d %H:%M:%S %Z %z')


