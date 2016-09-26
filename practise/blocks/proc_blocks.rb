proc_str = Proc.new { |word| "#{word.capitalize}: #{word.size}" }

buffer = Array.new
%w(jack tom lily lucy).each do |word|
  buffer.push(proc_str.call(word))
end

p buffer

def total2(from, to, &block)
  result = 0
  from.upto(to) do |num|
    if block
      result += block.call(num)
    else
      result += num
    end
  end
  result
end

puts total2(1, 10)
puts total2(1, 10) {|x| x ** 2}
