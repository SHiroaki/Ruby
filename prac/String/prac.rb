# coding: utf-8
# "や'を含む文字列を作る

desc = %Q{rubyは""も''も使います}
p desc

=begin
#ヒアドキュメント 改行を含む長い文字列を作りたいときに使う
10.times do |i|
  10.times do |j|
    # "" で囲むと#の中の式は展開される
    print (<<-"EOB")
i: #{i}
j: #{j}
i*j = #{i * j}
EOB
  end
end
=end

# ``コマンドは標準出力を受け取って文字列にできる
ls = `ls -al`
s = "abc\n" # sizeは4
p ls.size # size, lengthは同じ. 文字数を返す
p s.size

p "おはようございます".size # 日本語も同じ

# 文字列の長さが0かどうか
p "".empty?
p "a".empty?

# 文字列の検索 見つからなかった場合はnilが帰ってくる
str = "aabbccb"

p str.index("c")
p str.rindex("c") # 右側から検索していく

# 単純に含まれているかどうかだけ知りたい場合
p str.include?("ccb")

# Enumerator. each_lineで取り出した行をcollect(配列要素の置き換え)
str = "あ\nい\nう\nえ\nお\n"
p str.each_line.class
p str.each_line.map{|line| line.chop}
tmp = str.each_line.collect do |line|
  line.chomp * 3
end
p tmp

# 便利そうなメソッド
p " Thank you. ".strip # stripは文字列の「先頭と末尾」にある空白を取り除く

# 練習問題
rb_str = "Ruby is an object oriented programing language"
word_list = rb_str.split(" ")
p word_list
p word_list.sort
p word_list.sort_by{|word| word.downcase}

up_list = []

word_list.each do |item|
  up_list << item[0].upcase + item[1..-1]
end

p up_list

# 文字の出現頻度
conut = Hash.new(0)
p conut
# rb_strを一文字ずつの配列に変換
len_rb_str = rb_str.size
rb_chars = []
for i in (0..len_rb_str)
  rb_chars << rb_str[i]
end

rb_chars.each do |char|
  conut[char] += 1
end

p conut
