module Genera
  module Category
    module Body
      def self.included(klass)
        klass.extend ClassMethods
      end

      module ClassMethods
        def extend_methods
          define_method :aaa do
            puts 'mixin: aaa'
          end
          # todo: fill in
        end
      end
    end
  end
end

class Customer
  include Genera::Category::Body
  extend_methods
end

c = Customer.new
c.aaa

