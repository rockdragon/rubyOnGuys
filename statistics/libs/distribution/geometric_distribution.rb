module StatLib
  require_relative '../exts/lib'

  # 几何分布
  #   一系列独立试验
  #   每一次试验成功p 或 失败q 的可能概率相同
  #   感兴趣的是：第一次成功需要试验多少次（试验多少次取得成功的概率）
  class GeometryDistribution
    # 几何分布,第r次试验取得第一次成功的概率
    def self.qr(q, r)
      q ** (r - 1) * (1 - q)
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
    def self.var(q)
      q.fdiv((1 - q) ** 2)
    end
  end
end