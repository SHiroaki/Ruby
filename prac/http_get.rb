# coding: utf-8

require "net/http"
require "uri"
url = URI.parse("http://www.ruby-lang.org/ja/")
http = Net::HTTP.start(url.host, url.port) # :: でクラスメソッドの呼び出し

doc = http.get(url.path)
puts doc
