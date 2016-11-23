require_relative '../../libs/measuration'

sample = [61.9, 62.6, 63.3, 64.8, 65.1, 66.4, 67.1, 67.2, 68.7, 69.9]
col = StatLib::Collection.new(sample)

p %Q{预估总体方差:           #{col.variance_sample.to_f.round(4) } }

