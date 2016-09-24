class HelloWorld
  attr_accessor :name

  def initialize(name = 'Ruby')
    @name = name
  end

  def hello
    puts "hello, world. I am #{@name}."
  end
end

class << HelloWorld
  def chatter(n=3)
    n.times do
      puts 'holy crap!'
    end
  end
end

bob = HelloWorld.new('bob')
alice = HelloWorld.new('alice')
ruby = HelloWorld.new('ruby')

bob.hello
ruby.hello
alice.hello

ruby.name = 'Ruby'
ruby.hello

HelloWorld.chatter(5)