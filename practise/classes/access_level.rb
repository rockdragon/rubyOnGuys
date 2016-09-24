class Point
  attr_accessor :x, :y
  protected :x=, :y=

  def initialize(name='', x=0.0, y=0.0)
    @x, @y, @name = x, y, name
  end

  def to_s
    "#{@name}: {x=#{@x}, y=#{@y}}"
  end

  def swap(other)
    tmp_x, tmp_y = @x, @y
    @x, @y = other.x, other.y
    other.x, other.y = tmp_x, tmp_y
    self
  end
end

p0 = Point.new('p0')
p1 = Point.new('p1', 1.0, 2.0)
puts p0
puts p1

p0.swap(p1)
puts p0
puts p1

# p0.x = p1.x

