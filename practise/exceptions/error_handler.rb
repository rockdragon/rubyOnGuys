def copy(from, to)
  File.open(from) do |src|
    File.open(to, 'w') do |dst|
      begin
        dst = File.open(to, 'w')
        dst.write(src.read)
        dst.close
      rescue => e
        puts "error: #{e}"
        sleep 10
        retry
      end
    end
  end
end

a = 10.0 / 3 rescue 0
puts a
