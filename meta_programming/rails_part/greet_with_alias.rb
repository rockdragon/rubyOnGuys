module Greetings
  def greet
    "hello"
  end
end

class MyClass
  def greet
    'myclass'
  end
  include Greetings
end

p MyClass.new.greet
p MyClass.ancestors

# --------------------
module Greetings2
  def greet
    "#{super}"
  end
end

class MyClass2
  def greet
    'ooooooooo'
  end
  prepend Greetings2
end
m2 = MyClass2.new
p m2.greet
p MyClass2.ancestors
