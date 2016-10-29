class Integer
  # 阶乘
  def factorial
    self.send :_fact, 1
  end

  private
  def _fact(acc)
    if self == 0
      1
    elsif self <= 2
      self * acc
    else # tail recursion
      (self - 1).send :_fact, acc * self
    end
  end
end