class Summary
  attr_accessor :lines, :words, :chars

  def initialize
    @lines = 0
    @words = 0
    @chars = 0
  end

  def inspect
    "lines: #{@lines}, words: #{words}, chars: #{chars}"
  end

  alias to_s inspect
end

def count_file(file)
  summary = Summary.new
  File.open(file).each do |line|
    summary.lines += 1
    summary.words += line.split(/\s+/).size
    summary.chars += line.bytesize
  end
  summary
end

p count_file('./array.rb')

# 模拟tail命令
def tail(file, n=10)
  File.open(file) do |io|
    # 回溯一列
    class << io
      def back_one
        self.seek(-1, IO::SEEK_CUR)
        c = self.getc
        self.ungetc(c)
        c
      end
    end

    io.seek(0, IO::SEEK_END)
    lines = Array.new
    (n-1).downto(0).each do |current_line|
      lines[current_line] = 0
      c = io.back_one
      while c != %Q{\n} do
        #lines[current_line] = c + lines[current_line]
        c = io.back_one
      end
      lines[current_line] = io.pos + 1
    end
    lines.map.with_index { |offset, i|
      io.seek(offset, IO::SEEK_SET)
      "[#{i+1}] #{io.readline}"
    }
  end
end # 中文可以~

puts tail('./IO_exercise_tail.rb', 16)