class Computer
  def initialize(computer_id,  data_source)
    @id = computer_id
    @data_source = data_source
  end

  def respond_to_missing?(method, include_private=false)
    @data_source.respond_to?("get_#{method}_info") || super
  end

  def method_missing(name)
    super if !@data_source.respond_to?("get_#{name}_info")
    info = @data_source.send "get_#{name}_info", @id
    price = @data_source.send "get_#{name}_price", @id
    result = "Keyboard: #{info} ($#{price})"
    return "* #{result}"  if price >= 100
    result
  end

end

require '../methods/data_source'
my_pc = Computer.new(42, DS.new)
p my_pc.cpu
p my_pc.respond_to?(:cpu)