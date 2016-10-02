require 'securerandom'
require 'tempfile'

tmp_file = Tempfile.new(SecureRandom.uuid)
p tmp_file.path