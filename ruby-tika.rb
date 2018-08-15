#!/usr/bin/env ruby

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

  def rmeta
    # TODO: rmeta
  end

  def unpack
    # TODO: unpack
  end

  def parsers
    # TODO: parsers
  end

  def detectors
    # TODO: detectors
  end

  def version
    uri = URI("http://#{@hostname}:#{@port}/version")
    Net::HTTP.get(uri)
  end

  def meta(filename, content_type = nil)
    content_type ||= MIME::Types.type_for(filename).first.content_type
    res = RestClient::Resource.new(_url('meta'))
    res.put File.read(filename), content_type: content_type
  end

  def text(filename, content_type = nil)
    content_type ||= MIME::Types.type_for(filename).first.content_type
    res = RestClient::Resource.new(_url('tika'))
    res.put File.read(filename), content_type: content_type
  end

  def mime_type(filename)
    res = RestClient::Resource.new(_url('detect/stream'))
    res.put File.read(filename),
            'Content-Disposition' => "attachment; filename=#{filename}"
  end

  def language(string)
    res = RestClient::Resource.new(_url('language/string'))
    res.put string
  end

  def _url(endpoint)
    "http://#{@hostname}:#{@port}/#{endpoint}"
  end

  def _truncate(string, length)
    if string.length <= length
      string
    else
      string[0, string.rindex(/\s/, length - 3)].rstrip + '...'
    end
  end
end

t = TikaWrapper.new
puts "Found #{t.version} server"
['demo.docx', 'a.docx'].each do |filename|
  content_type = t.mime_type(filename)
  puts "Detected stream type #{content_type}"

  metadata = t.meta(filename, content_type)
  puts "Metadata for #{filename}:\n#{t._truncate(metadata, 40)}"

  text = t.text(filename)
  puts "Found #{text.length} plain text"

  language = t.language(text)
  puts "Detected language #{language}"
end
