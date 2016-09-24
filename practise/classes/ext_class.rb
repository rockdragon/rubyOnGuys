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

class RingArray < Array
  def [](i)
    idx = i % size
    super(idx)
  end
end

week_day = RingArray['金', '木', '水', '火', '土', '日', '月']
p week_day[7]
p week_day[11]
p week_day[15]
p week_day[-1]