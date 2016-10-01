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

$stdout.sync = true
$stdout.print "out1 "
$stderr.print "err1 "
$stdout.print "out2 "
$stdout.print "out3 "
$stderr.print "err2\n"
$stdout.print "out4\n"

require 'open-uri'
open('http://www.example.org') do |io|
  puts io.read
end

require 'stringio'
io = StringIO.new
io.puts('A')
io.puts('B')
io.puts('C')
io.rewind
p io.read
