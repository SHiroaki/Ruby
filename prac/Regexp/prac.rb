# coding: utf-8
#キャプチャ

/(.)(.)(.)/=~"abc"
p $1
p $2
p $3

#マッチした文字列の前後を保持する変数
/C./ =~ "ABCDEF"
p $` # マッチした文字列の前の文字
p $& # マッチした文字列そのもの
  p $' # マッチした文字列より後ろの文字列

str = "abracatabra"
nstr = str.sub(/.a/) do |matched|
  '<'+matched.upcase+'>'
end

p nstr
