module CheckedAttributes
  def add_checked_attribute(klass, attribute, &validation)
    klass.class_eval do
      define_method "#{attribute}=" do |value|
        raise 'Invalid attribute' unless validation.call(value)
        instance_variable_set("@#{attribute}", value)
      end

      define_method attribute do
        instance_variable_get "@#{attribute}"
      end
    end
  end

  class Class
    def attr_checked(attribute, &validation)
      define_method "#{attribute}=" do |value|
        raise 'Invalid attribute' unless validation.call(value)
        instance_variable_set "@#{attribute}"
      end

      define_method attribute do
        instance_variable_get "@#{attribute}"
      end
    end
  end
end