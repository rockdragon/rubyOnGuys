module Lib
  require_relative '../patches/integer'
  require_relative '../patches/string'

  def self.combination(n, x)
    n.factorial / (x.factorial * (n - x).factorial)
  end

  def self.permutation(n, x)
    n.factorial / (n - x).factorial
  end
end

