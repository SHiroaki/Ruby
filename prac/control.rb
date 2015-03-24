# coding: utf-8

=begin

真:falseとnil以外すべて
偽:falseとnil

真偽値を返すメソッドの末尾には?をつける

=end

a = 20
if a >= 10 then
  print("bigger\n")
end

#if 条件 then(thenは省略できる)
#   do
#end(忘れがち)
#が基本

a = 8
if a > 10 then
  print "bigger\n"
else
  print "smaller\n"
end

#繰り返し
i = 1
while i <= 10
  print i, "\n"
  i += 1
end

# times 繰り返す回数が決まっている場合の処理
# イテレータ

=begin

繰り返す回数.times do
  処理
end

=end

10.times do
  print "Apple\n"
end

# メソッドの作成
def hello
  print "hello\n"
end

5.times do
  print hello()
end
