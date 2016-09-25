require('net/http')
require('uri')

module Spider
  def crawl(url_string)
    # 单例类
    class << url_string
      def ssl?
        (/^https/ =~ self) != nil
      end
    end

    url = URI.parse(url_string)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = url_string.ssl?
    http.request_get(url.path) { |res|
      res.read_body do |segment|
        yield segment
      end
    }
  end

  module_function :crawl
end

max_size = 0
buffer = ''
Spider.crawl('https://www.ietf.org/rfc/rfc2616.txt') { |segment|
  if segment.size > max_size
    max_size = segment.size
    buffer = segment
  end
}
puts "max segment size: #{max_size}"
buffer_lines = buffer.split(/\n/)
first_line = buffer_lines.bsearch{|line| line.size > 10}
puts first_line.chars.sort { |a, b| b <=> a }.join

# Spider.crawl('http://www.baidu.com/') { |segment|
#   puts segment
# }