class Integer
  # 阶乘
  def factorial
    self.send :_fact, 1
  end

  private
  def _fact(acc)
    if self <= 2
      self * acc
    else
      (self - 1).send :_fact, acc * self
    end
  end
end