def foo(*args, **dict)
  args.each do |x| puts x end
  dict.each do |k, v| puts "#{k}:#{v}" end
end

args = [1, 2, 3, 4, 5]
foo('gaga', *args, c:2, d:5)