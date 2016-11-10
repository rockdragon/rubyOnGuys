require_relative '../../libs/measuration'

player1 = [7, 9, 9, 10, 10, 10, 10, 11, 11, 13]
player2 = [7, 8, 9, 9, 10, 10, 11, 11, 12, 13]
player3 = [3, 3, 6, 7, 7, 10, 10, 10, 11, 13, 30]

def report(array)
  col = StatLib::Collection.new(array)
  p col.raw_array
  p %Q{均值:           #{col.average.to_f } }
  p %Q{方差:           #{col.variance.to_f } }
  p %Q{标准差:         #{col.standard_deviation.to_f } }
  p %Q{标准分:         #{col.standard_score(12).to_f } }
end

report(player1)
report(player2)
report(player3)
