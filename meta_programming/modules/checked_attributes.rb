module CheckedAttributes
  def self.included(mod)
    puts "included into #{mod}"
    inject_attr_checked(mod)
  end

  def self.prepended(mod)
    puts "prepended to #{mod}"
    inject_attr_checked(mod)
  end

  def self.inject_attr_checked(mod)
    class << mod
      def attr_checked(attribute, &validation)
        define_method "#{attribute}=" do |value|
          raise 'Invalid attribute' unless validation.call(value)
          instance_variable_set("@#{attribute}", value)
        end

        define_method attribute do
          instance_variable_get "@#{attribute}"
        end
      end
    end
  end

end