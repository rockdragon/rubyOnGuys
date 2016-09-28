lang = %w(Ruby Perl Python Scheme Pike REBOL)
p lang
while item = lang.pop do
  p item
end

holy = %i(Name jack sex male age 30)
p holy

alpha = %w(a b c d e)
p alpha.push('f')
p alpha.shift
p alpha
p alpha.unshift('g')
p alpha.pop
p alpha
p alpha.concat(%w(h i j k l))

arr = (1 .. 10).to_a
p arr[4..6]
p arr[4, 6]
p arr[-3..-1]

arr[2..0] = %w(x y z)
p arr

arr2 = [1, [2, [3]], [4], 5]
p arr2.flatten

s = %w(i'm your father, luke)
p s.sort_by {|w| w.length}
p s.sort {|a, b| a <=> b }

arr3 = %w(1 2 3 4 5 6)
arr4 = %w(4 5 6 7 8 9)
p (arr3 | arr4) - arr3
p arr3 & arr4

aaa = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
p aaa

bbb = Array.new(3, [0, 0, 0])
bbb[0][1] = 2
p bbb

ccc = Array.new(3) do
  [0, 0, 0]
end
ccc[0][1] = 2
p ccc

ddd = Array.new(5) {|x| x + 1}
p ddd