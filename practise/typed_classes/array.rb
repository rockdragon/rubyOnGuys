lang = %w(Ruby Perl Python Scheme Pike REBOL)
p lang

holy = %i(Name jack sex male age 30)
p holy

arr = (1 .. 10).to_a
p arr[4..6]
p arr[4, 6]
p arr[-3..-1]

arr[2..0] = %w(x y z)
p arr