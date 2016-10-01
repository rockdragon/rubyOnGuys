def copy(from, to)
  File.open(from) do |input|
    File.open(to, 'w') do |output|
      output.write(input.read)
    end
  end
end

def delete(file)
  File.delete(file)
end

file_name = './IO_copied.rb'
if File.exist?(file_name)
  delete(file_name)
end

require 'fileutils'

def refresh(file)
  FileUtils.touch(file)
end

def list(path)
  Dir.open(path) do |dir|
    dir.each do |name|
      full_path = path + name
      yield File.directory?(full_path) ? "[#{name}]" : name
    end
  end
end

list('../') do |name|
  puts name
end

def traverse(path)
  if File.directory?(path)
    Dir.open(path) do |dir|
      while name = dir.read
        next if name == '.'
        next if name == '..'
        traverse(path + '/' + name)
      end
    end
  else
    process_file(path)
  end
end
def process_file(path)
  puts path
end
traverse('..')