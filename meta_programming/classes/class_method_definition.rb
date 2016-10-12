class MyClass
  def self.b_class_method; end
end

def MyClass.a_class_method; end

class MyClass
  class << self
    def c_class_method; end
  end
end

MyClass.methods.grep(/_class_method/) do |m|
  p m
end