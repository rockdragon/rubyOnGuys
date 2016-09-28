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