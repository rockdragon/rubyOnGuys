def a_method(a, b)
  a + yield(a, b)
end

p a_method(10, 20) { |x, y| x + y}
