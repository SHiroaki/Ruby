# coding: utf-8

# コマンドラインから引数を受け取るときは ARGV配列オブジェクトを使う
print "第一引数:", ARGV[0], "\n"
print "第二引数:", ARGV[1], "\n"
print "第三引数:", ARGV[2], "\n"

# to_iで取得したデータを文字列から整数に変換する
num0 = ARGV[0]
num1 = ARGV[1]

p num0, num1
p num0.to_i, num1.to_i

