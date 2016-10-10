def event(description)
  puts "ALERT: #{description}" if yield
end

event 'an event that always happen' do
  true
end

event 'an event that never happen' do
  false
end