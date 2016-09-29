$stdout.puts ('some output')
$stderr.puts ('some error')

File.open('./IO.rb') do |file|
  while line = file.gets
    printf("[%2d]: %s", file.lineno, line)
  end
end

def seek_2(f, pos)
  File.open(f) do |file|
    file.seek(pos, IO::SEEK_SET)
    file.gets
  end
end

printf('[seek]: %s', seek_2('./hashing.rb', 20))

