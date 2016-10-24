require_relative 'stat_lib'

array = [22, 23.6, 22, 170.8, 2016.35, 466]
col = StatLib::Collection.new(array)
p col.sk.to_f