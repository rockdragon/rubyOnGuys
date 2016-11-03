module Lib
  require_relative '../patches/integer'

  def self.combine(n, x)
    n.factorial / (x.factorial * (n - x).factorial)
  end
end

