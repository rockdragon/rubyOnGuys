module StringExtension
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/, '')
    end
  end
end

#include StringExtension
#p 'hello'.to_alphanumeric

using StringExtension
p 'hello'.to_alphanumeric

class MyClass
  def my_method
    'original_method'
  end

  def another_method
    my_method
  end
end

module MyClassRefinement
  refine MyClass do
    def my_method
      'refined_method'
    end
  end
end

using MyClassRefinement
p MyClass.new.my_method
p MyClass.new.another_method