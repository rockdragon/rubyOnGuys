def match(pattern, string)
  pattern =~ string
  $1
end