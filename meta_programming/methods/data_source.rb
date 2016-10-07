class DS
  def self.define_component_info(name)
    define_method("get_#{name}_info") do |id|
      "#{name}:#{id} very good"
    end
  end

  def self.define_component_price(name)
    define_method("get_#{name}_price") do |id|
      200
    end
  end

  define_component_info :mouse
  define_component_info :cpu
  define_component_info :keyboard

  define_component_price :mouse
  define_component_price :cpu
  define_component_price :keyboard
end