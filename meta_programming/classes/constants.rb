module MyModule
  MY_CONSTANT = 'outer constant'

  class MyClass
    MY_CONSTANT = 'inner constant'
  end
end

puts MyModule::MY_CONSTANT
puts MyModule::MyClass::MY_CONSTANT