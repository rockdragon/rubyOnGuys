class Printer
  def initialize(name = 'printer')
    @name = name
  end

  def print
    print_name
  end

  private
  def print_name
    puts @name
  end
end

class PrinterJr < Printer
  def print2
    print_name
  end
end

class PrinterCrap
  def crap
    p3 = PrinterJr.new('啊哦')
    p3.print_name
  end
end

p = Printer.new('雷吼啊')
p.print

p2 = PrinterCrap.new
p2.crap

