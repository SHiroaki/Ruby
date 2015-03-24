# coding: utf-8
=begin
シンボル : メソッドなどの名前の識別に使うラベルをオブジェクトに
           したもの
sym = :foo はシンボル:fooを表す

pythonのdictと似たような感じか
=end

sym = :foo
# p sym
str = sym.to_s # シンボルを文字列に変換
# p str
sym2 = str.intern # 文字列をシンボルに変換
# p sym2

# ハッシュを作る
# {key(シンボル) => オブジェクト}

font_table = {:normal => "+0", :small => "-1", :big => "+1"}

# p font_table
# p font_table[:normal] # ハッシュからの取り出し

=begin

ハッシュ.each do |key, value|
  処理
end

=end

print "<html><title>font size list </title>"
print "<body>\n<p>\n"

font_table.each do |key, value|
  print '<font size="', value, '">', key, '</font><br>', "\n"
end

print "</p></body></html>\n"
