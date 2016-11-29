module StatLib
  require_relative '../exts/lib'

  # 置信区间
  class ConfidenceInterval
    def self.level_to_c(level)
      case level
        when 0.9 then 1.64
        when 0.95 then 1.96
        when 0.99 then 2.58
        else 1.96
      end
    end

    # 正态(非正态)的置信区间
    #   n 非正态需 > 30
    #   o 也可表示样本方差s (Za/2)
    #   level 置信水平: 0.9/0.95/0.99
    def self.interval(x, o, n, level)
      c = level_to_c(level)
      boundary = c * o.fdiv(Math.sqrt(n))
      {lower: x - boundary, upper: x + boundary}
    end

    # 二项的置信区间
    #   p 为样本比例
    #   level 置信水平: 0.9/0.95/0.99
    def self.binominal(p, n, level)
      c = level_to_c(level)
      q = 1 - p
      boundary = c * Math.sqrt((q * p).fdiv(n))
      {lower: p - boundary, upper: p + boundary}
    end

    # T分布的置信区间
    #   t:T分布概率,可由 p=(1-level)/2 和 v=n-1 查表确定
    def self.t_interval(x, s, n, t)
      boundary = t * s.fdiv(Math.sqrt(n))
      {lower: x - boundary, upper: x + boundary}
    end
  end
end
