# coding: utf-8

#これは愚直にファイルをすべて読み込むバージョン
=begin

filename = ARGV[0]
file = open(filename)
text = file.read
print text
file.close

=end

filename = ARGV[0]
file = open(filename)

while text = file.gets # getsは一行ずつ読み込む
  print text
end

file.close

