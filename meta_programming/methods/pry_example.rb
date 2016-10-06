require 'pry'

pry = Pry.new
pry.memory_size = 101

def refresh(options={})
  defaults = {}
  attributes = [ :input, :output, :commands, :print ]

  attributes.each do |attr|
    defaults[attr] = Pry.send attr
  end

  defaults.merge!(options).each do |key, val|
    send("#{key}=", value) if respond_to?("#{key}=")
  end

  true
end
