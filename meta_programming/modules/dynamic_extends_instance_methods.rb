module Genera
  module Category
    module Body
      def self.included(klass)
        klass.include ClassMethods
      end

      module ClassMethods
        def aaa
          puts 'mixin: aaa'
        end
        # todo: fill in
      end
    end
  end
end

class Customer
  include Genera::Category::Body
end

c = Customer.new
c.aaa

