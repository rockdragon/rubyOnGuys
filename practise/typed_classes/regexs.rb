'hello gorden clark'.scan(/\w+/) do |matched|
  p matched
end

regexp_uri = %r|^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\?([^#]*))?(#(.*))?|
regexp_uri =~ 'https://www.moye.me/wp-admin/'
puts $1, $2, $3, $4, $5

email = 'moyerock@gmail.com'
/([^@]+)@(.*)?/ =~ email
puts $1, $2

p '正则表达式真难啊，怎么这么难懂！'.sub('真难', '真简单').sub('难', '易')

def word_capitalize(statement)
  statement.split(/-/).collect do |w|
    w.downcase.capitalize
  end.join('-')
end

p word_capitalize('in-reply-to')
p word_capitalize('X-MAILER')