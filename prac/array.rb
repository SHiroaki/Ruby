# coding: utf-8
name = ["鈴木", "小林"]

puts(name[0])

# 配列にないインデックスを使用すると自動的に拡張される
name[2] = "松本"

puts(name[2])

# 配列の大きさは array.size (len)じゃない
puts name.size

# イテレータで配列の各要素にアクセス
=begin

配列.each do |変数|
  処理
end

do~endブロックには幾つかの処理をまとめき記述できる
配列の要素は 変数 に代入される
=end


name.each do |n|
  puts n
end


