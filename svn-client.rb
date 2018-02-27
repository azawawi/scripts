#!/usr/bin/env ruby

#
# Please remember to run:
#   sudo apt install libsvn-dev
#

require 'pp'
require 'ffi'

module MyLib
    class SvnVersionT < FFI::Struct
      layout(
          :major, :int,
          :minor, :int,
          :patch, :int,
          :tag,   :string,
        )
    end
end

module MyLib
  extend FFI::Library
  ffi_lib 'svn_client-1'

  attach_function :svn_client_version, [], MyLib::SvnVersionT.by_ref
end


version = MyLib.svn_client_version
(major, minor, patch, tag) = [
    version[:major],
    version[:minor],
    version[:patch],
    version[:tag]
]
puts "Subversion version is: #{major}.#{minor}.#{patch}"
