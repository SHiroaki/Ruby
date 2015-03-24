# coding: utf-8
x = y = z = 0
ary = [1, 2, 3]

=begin
ブロック内でのみ有効なのでx, yは
外側のローカル変数に影響を及ぼさない.
ただし、ぞうでないzは書き換えらえる
=end

ary.each do |x; y|
  y = x
  z = x
  p [x, y, z]
end

p [x, y, x]
