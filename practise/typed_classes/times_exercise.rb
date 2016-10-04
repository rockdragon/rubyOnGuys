require 'time'

def cparsedate(str)
  arr = str.gsub(/[年月日点时分秒]/, '').split(/\s+/)
  if arr[3] == '下午'
     arr[4] = arr[4].to_i + 12
  end
  t = sprintf('%d-%d-%d %d:%d:%d', arr[0], arr[1], arr[2], arr[4], arr[5], arr[6])
  Time.parse(t)
end

p cparsedate('2013 年 5 月 30 日下午 8 点 17 分 50 秒')