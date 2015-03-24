# coding: utf-8
#要素が文字列で空白を含まない入れるを作成する %w

lang = %w(ruby python c java)
#p lang

# to_aでその他のオブジェクトを配列に変更する

test = {"b" => "#1231", "w" => "#345"}
#p test

test_list = test.to_a
#p test_list

alpha = %w[a b c d e f g]
#p alpha
print "before", alpha[2, 3], "\n"
alpha[2, 3] = %w[C D E]
print "after", alpha[2, 3], "\n"
print alpha, "\n"

# 要素の挿入 Array[n, 0] でn番目の要素の前に挿入される
alpha[2, 0] = %w[1 2 3]
p alpha

# 配列の結合
num = [1, 2, 3]
even = [2, 4, 6]

p (num + even) # こっちの場合は同じ要素があっても残される
p (num | even) # 同じ要素は一つになる

# 配列の末尾に追加する appendみたいなもん
num << "AS"
p num
# 配列の初期化
# ブロックの中で新しいオブジェクトが作られるようにする
a = Array.new(8){|i| i + 1}
p a

# 複数の値に並行してアクセスする
a1 = [1,2,3]
a2 = [4,5,6]
a3 = [7,8,9]

result = []

a1.zip(a2, a3) do |a, b, c|
  result << a + b + c
end

p result

# 練習問題
print "------------\n"
ary1 = Array.new(100){|i| i + 1}
p ary1

=begin
# 新しい配列を作らずに全ての要素を100倍する
# ary1.map!{|i| i * 100}
# p ary1

# 新しい配列を作らず(作る場合も)に3の倍数だけを残す
result = []
ary1.each do |item|
  if item % 3 == 0
    result << item
  end
end

p result

def is3times?(n)
  if n % 3 != 0
    return TRUE
  else
    return FALSE
  end
end

p is3times?(33)

ary1.delete_if{|i| is3times?(i)}

p ary1

p ary1.reverse!
=end
# 配列の整数の和を求める
puts ary1.reduce {|sum, n| sum + n}

result = []
10.times do |i|
  result << ary1[i*10..i*10 + 9]
end

p result

def sum_array(ary1, ary2)
  result = []
  ary1.zip(ary2) do |a1, a2|
    result << a1 + a2
  end
  return result
end

p sum_array([1,2,3], [4,6,8])
