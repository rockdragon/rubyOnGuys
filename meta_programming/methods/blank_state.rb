class HolyBasicObject < BasicObject
  def method_missing(name)
    "#{name}"
  end
end

hbo = HolyBasicObject.new
p hbo.display