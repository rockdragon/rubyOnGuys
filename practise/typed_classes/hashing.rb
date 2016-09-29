person = {'name' => 'tom', 'sex' => 'male', 'age' => 18}
p person


person2 = {name: 'tom', sex: 'male', age: 18}
p person2

person3 = Hash.new
person3['name'] = 'tom'
person3['sex'] = 'male'
person3['age'] = 18
p person3

p person3.keys
p person3.values
p person3.to_a

def count_words(array)
  result = Hash.new(0)
  array.each do |word|
    result[word] += 1
  end
  result
end

p count_words(%w(jack lucy lucy jack tom harry louis))

class ComparableObject
  attr_reader :v

  def initialize(v)
    @v = v
  end

  def <=> (other)
    @v <=> other.v
  end
end

co = ComparableObject.new(10)
co2 = ComparableObject.new(20)
p co <=> co2

def str2hash(str)
  hash = Hash.new
  arr = str.split(/[\s\\n]+/)
  for i in 0..(arr.size/2 -1)
    hash[arr[i*2]] = arr[i*2+1]
  end
  hash
end

p str2hash('blue 蓝色 white 白色\nred 红色')