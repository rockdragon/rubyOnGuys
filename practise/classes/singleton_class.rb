str1 = 'Ruby'
str2 = 'Ruby'

class << str1
  def hello
    puts self
  end
end

str1.hello
str2.hello