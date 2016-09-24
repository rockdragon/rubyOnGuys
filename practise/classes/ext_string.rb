class String
  def count_word
    self.split(/\s+/).size
  end
end

class HolyString < String
  def initialize(str)
    super(str)
  end
end

hs = HolyString.new('hello dude! where are you from?')
puts hs.count_word