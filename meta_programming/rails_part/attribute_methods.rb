ATTR_NAMES = Module.new {
  def self.set_name_cache(name, value)
    const_name = "ATTR_#{name.to_s.upcase}"
    const_set const_name, value.dup.freeze
  end
}

ATTR_NAMES.set_name_cache(:holy, 'crap')
p ATTR_NAMES.const_defined?(:ATTR_HOLY)
