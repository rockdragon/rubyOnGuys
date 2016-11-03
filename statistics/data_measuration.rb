require_relative 'libs/measuration'

array = [10.0, 8.5, 10.0, 10.2, 10.6, 10.5, 9.8, 9.7, 9.5, 9.3]
col = StatLib::Collection.new(array)

p array
p %Q{和:             #{col.sum(array).round(2)} }
p %Q{均:             #{col.average.to_f } }
p %Q{平均(绝对离)差:  #{col.mean_deviation.to_f } }
p %Q{方差:           #{col.variance.to_f } }
p %Q{标准差:          #{col.standard_deviation.to_f } }
p %Q{离散系数:        #{col.discreteness.to_f } }
p %Q{偏态系数:        #{col.skewness.to_f } }
p %Q{峰态系数:        #{col.kurtosis.to_f } }
p %Q{3阶矩:          #{col.moment(3).to_f } }
p %Q{3阶中心矩:      #{col.central_moment(3).to_f } }
p %Q{样本偏度:       #{col.sample_skewness.to_f } }
p %Q{样本峰度:       #{col.sample_kurtosis.to_f } }