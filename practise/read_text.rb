filename = ARGV[0]
file = File.open(filename)
i = 1
file.each_line do |line|
  puts "#{i} \t #{line}"
  i+=1
end
file.close
