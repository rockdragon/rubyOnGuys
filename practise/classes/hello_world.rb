class HelloWorld
  def initialize(name = 'Ruby')
    @name = name
  end

  def hello
    puts "hello, world. I am #{@name}."
  end
end

bob = HelloWorld.new('bob')
alice = HelloWorld.new('alice')
ruby = HelloWorld.new('ruby')

bob.hello
ruby.hello
alice.hello