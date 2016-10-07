class Holy
  attr_accessor :name

  def initialize(name="name")
    @name=name
  end

  private
  def groan
    puts 'groan'
  end
end

holy = Holy.new
holy.send('name=', 'holy') if holy.respond_to?('name=')
p holy.name == 'holy'

#holy.groan
holy.send('groan')