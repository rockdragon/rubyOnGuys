module Lib
  require_relative '../patches/integer'
  require_relative '../patches/string'

  # 组合
  def self.combination(n, x)
    n.factorial / (x.factorial * (n - x).factorial)
  end

  # 排列
  def self.permutation(n, x)
    n.factorial / (n - x).factorial
  end
end

