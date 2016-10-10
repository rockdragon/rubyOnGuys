def id(entity, &block)
  if block
    block.call(entity)
  else
    entity
  end
end

p id(100)
p id(100){|x| x ** 2}

def id2(entity)
  if block_given?
    yield entity
  else
    entity
  end
end

p id2(100)
p id2(100){|x| x ** 2}