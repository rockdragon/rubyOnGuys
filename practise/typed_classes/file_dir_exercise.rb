class String
  def trim_end(tail=/\s+$/)  self.gsub(tail, '') end
end

def du(path)
  size = 0
  Dir.open(path) do |dir|
    dir.each do |name|
      full_path = path.trim_end(/\/$/) + '/' + name
      if File.directory?(full_path)
        next if name == '.'
        next if name == '..'
        size += du(full_path)
      else
        size += File.size(full_path)
        puts "[File]\t#{file_size_expr(File.size(full_path))}\t#{name}"
      end
    end
  end
  puts "[Dir]\t#{file_size_expr(size)}\t#{path}"
  size
end

def file_size_expr(size)
  size_repr = nil
  if size > 10 ** 9
    size_repr = (size / 10 ** 9).to_s + 'GB'
  elsif size > 10 ** 6
    size_repr = (size / 10 ** 6).to_s + 'MB'
  elsif size > 10 ** 3
    size_repr = (size / 10 ** 3).to_s + 'KB'
  else
    size_repr = size.to_s + 'B'
  end
  "[#{size_repr}]"
end

du('../')