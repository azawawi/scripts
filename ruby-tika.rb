require 'net/http'
require 'rest-client'
require 'mime-types'

#
# A simple Tika server wrapper that provides the following methods:
# - meta
# - text
# - version
#
class TikaWrapper
  def initialize(hostname = 'localhost', port = 9998)
    @hostname = hostname
    @port = port
  end

  def version
    uri = URI("http://#{@hostname}:#{@port}/version")
    Net::HTTP.get(uri)
  end

  def meta(filename)
    content_type = MIME::Types.type_for(filename).first.content_type
    res = RestClient::Resource.new("http://#{@hostname}:#{@port}/meta")
    res.put File.read(filename), content_type: content_type
  end

  def text(filename)
    content_type = MIME::Types.type_for(filename).first.content_type
    res = RestClient::Resource.new("http://#{@hostname}:#{@port}/tika")
    res.put File.read(filename), content_type: content_type
  end
end

t = TikaWrapper.new
puts t.meta('phocapdf-demo.pdf')
puts t.meta('demo.docx')
puts t.version
