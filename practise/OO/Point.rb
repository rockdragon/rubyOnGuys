class Point
  attr_reader :x, :y

  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def inspect
    "#{x}, #{y}"
  end

  def +(other)
    self.class.new(x + other.x, y + other.y)
  end

  def -(other)
    self.class.new(x - other.x, y - other.y)
  end

  def +@
    dup
  end

  def -@
    self.class.new(-x, -y)
  end
end

p0 = Point.new(3, 6)
p1 = Point.new(1, 8)

p p0
p p1
p p0 + p1
p p0 - p1

p p0.object_id
p (+p0).object_id
p -p0