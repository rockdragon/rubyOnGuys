class Holy
  attr_accessor :name

  def initialize(name="name")
    @name=name
  end
end

holy = Holy.new
holy.send('name=', 'holy') if holy.respond_to?('name=')
p holy.name == 'holy'
