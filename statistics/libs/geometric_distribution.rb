module StatLib
  require_relative 'exts/lib'

  class GeometryDistribution
    # 几何分布,第r次试验取得第一次成功的概率
    def self.qpr(q, p, r)
      q ** (r - 1) * p
    end

    # 几何分布,r次试验失败后取得第一次成功的概率
    def self.qr_gt(q, r)
      q ** r
    end

    # 几何分布,r次试验以内取得第一次成功的概率
    def self.qr_lte(q, r)
      1 - q ** r
    end

    # 期望
    def self.ex(p)
      1.fdiv(p)
    end

    # 方差
    def self.var(q, p)
      q.fdiv(p ** 2)
    end
  end
end