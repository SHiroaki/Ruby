# coding: utf-8
# 数値の比較

i,j,k,m = 5,8,3,5
# <=> 左項が大きいときは1,左項と右項が等しい時は0, 右項が大きい時は-1を返す
p i <=> j
p i <=> k
p i <=> m

# prac3.2
puts "--------------------prac3.2--------------------"

puts 10 / 3, 10 % 3
f = 10.3
d = -10.3

puts f.ceil
puts d.floor

t = 255
puts t.to_s(2)
puts t.to_s(8)
puts t.to_s(16)

puts "--------------------理解度--------------------"
puts (5.04 * 10.0).round / 10.0
puts (5.05 * 10.0).round / 10.0

a = 0.0 / 0
if a.integer?
  puts "整数です"
elsif a.infinite?
  puts "無限大"
elsif a.nan?
  puts "数値ではありません"
end
