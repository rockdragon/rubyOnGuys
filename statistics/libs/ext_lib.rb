module ExtLib
  require_relative 'monkey_patch'

  def self.combine(n, x)
    n.factorial / (x.factorial * (n - x).factorial)
  end
end

