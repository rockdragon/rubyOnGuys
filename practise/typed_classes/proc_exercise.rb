def my_collect(obj, &block)
  res = []
  obj.each do |x|
    res << block.call(x)
  end
  res
end

ary = my_collect([1, 2, 3, 4, 5]) do |i|
  i * 2
end
p ary

def accumlator
  to_class = :class.to_proc
  total = 0
  Proc.new do |x|
    if to_class.call(x) == Fixnum
      total += x
    else
      total
    end
  end
end

acc = accumlator
p acc.call(1)
p acc.call(2)
p acc.call(3)
p acc.call(4)
p acc.call('hello')