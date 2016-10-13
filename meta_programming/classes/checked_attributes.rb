module CheckedAttributes
  def add_checked_attribute(klass, attribute)
    eval <<-end_block
      class #{klass}
        def #{attribute}=(value)
          raise 'Invalid attribute' unless value
          @#{attribute} = value
        end
        def #{attribute}()
          @#{attribute}
        end
      end
    end_block
  end
end