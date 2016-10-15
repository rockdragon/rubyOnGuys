class Entity
  COLUMNS = []

  # 钩子方法,在类添加新的方法时回调
  def self.method_added(method_name)
    COLUMNS << method_name
  end

  def self.columns
    COLUMNS
  end
end

class User < Entity
  def name
    #TODO
  end
  def sex
    #TODO
  end
end

p User.columns
