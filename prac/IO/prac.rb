# coding: utf-8
=begin
if $stdin.tty?
  print "Stdin is a TTY.\n"
else
  print "Stdin is not a TTY\n"
end

# ファイル出力
File.open("README.txt") do |io|
  # File.openメソッドにブロックを渡すとブロックが閉じられた時に
  # 自動的にファイルもcloseされる
  while line = io.gets
    # getsメソッドの戻り値がwhileの条件判断に使用される
    print line.chomp!
  end
end

print "\n----------------------------------------\n"
File.open("README.txt") do |io|
  io.each_line do |line|
    print line 
  end
  p io.eof?
end

# 何行読み込んだか
print "\n----------------------------------------\n"
File.open("README.txt") do |io|
  io.each_line do |line|
    print line, io.lineno # linenoで何行目かわかる
  end
  p io.eof?
end

# 一文字ずつ読み込んで処理
print "\n----------------------------------------\n"
File.open("README.txt") do |io|
  io.each_char do |ch|
    print ch + "\n"
  end
  p io.eof?
end

# ファイルポインタ
File.open("hello.txt") do |io|
  p io.read(5)
  p io.pos
  io.pos = 0
  p io.gets
end
=end
# 外部コマンドとのやりとり IO.popen
file = IO.popen("ls")

=begin
# open-uri HTTPやFTPのURLを普通のファイルのように開くことができる
require "open-uri"
# HTTP経由でデータを読み込む
open("https://www.ruby-lang.org") do |io|
  # puts io.read # rubyのHPをコンソールに表示する
end
=end

# 練習問題
File.open("README.txt") do |io|
  line_count = 0  # テキストの行数
  word_count = 0  # 単語の数
  char_count = 0  # 文字数
  
  io.each_line do |line|
    line.chomp!
    words = line.split(" ")
    word_count += words.length # それぞれの行の単語数を加算していく
    line_count += 1
    if words.length != 0
      for word in words
        char_count += word.length
      end
    end
  end
  
  print "行数", line_count, "\n"
  print "単語数", word_count, "\n"
  print "文字数", char_count, "\n"
end

print "\n"

# 俺のバージョン
def mytail(n, filename)
  # filenameの最後のn行だけ表示する
  data = File.read(filename)
  line_array = data.split("\n")
  index = -1
  tails = Array.new()
  
  n.times do
    tails.unshift(line_array[index])
    index -= 1
  end

  for line in tails
    puts line
  end
end

mytail(10, ARGV[0])

# 回答
def tail(lines, file)
  queue = Array.new
  open(file) do |io|
    while line = io.gets
      queue.push(line)
      if queue.size > lines
        queue.shift # shiftは先頭要素を取り除く
        # queueの末尾にlineを保存して行くけども、サイズが10を超えたら
        # 先頭から消して行く.よって最後の10行だけ残る
      end
    end
  end
  queue.each do |line|
    print line
  end
end

tail(10, ARGV[0])
  
