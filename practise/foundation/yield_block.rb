def loop_in_100
  cursor = 0
  until cursor > 100
    yield cursor
    cursor += 10
  end
end

loop_in_100 do |cursor|
  puts "cursor: #{cursor}"
end
