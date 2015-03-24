# coding: utf-8
# prac 2.2

apple = "apple"
puts apple
puts __FILE__
puts __LINE__

=begin
# 定数には再代入できない(実際はできるけど警告がでる)
APPLE = "asd"
puts APPLE
APPLE = "asw"
puts APPLE
=end

# 多重代入
a, b, c = 1, 2, 3
puts a
puts b
puts c # 空白

a, *b = 1, 2, 3 # *をつけると配列になる
puts a
puts b
print b, "\n"

animal1, animal2, animal3 = "cat", "cat", "dog"
puts animal1 != animal2
puts !(animal1 == animal2) && (animal1 == animal3)

# prac 2.3
print "------------------prac2.3----------------------\n"
puts (10 + 20) * 4

a, b = false, true
puts !a && b || a && !b

# 括弧の省略 引数がない場合は括弧を省略するのがスマート
# obj.method
# 引数がある場合でも省略して書くことができる
# obj.method arg1, arg2

# prac2.4
print "------------------prac2.4----------------------\n"
a = "Ruby"
puts a.size

# 条件分岐
a, b = 1, 10
if a == b
  puts "a == b"
elsif a > b
  puts "a > b"
else
  puts "a < b"
end
  
a, b = 1, 10
unless a > b
  puts "a is not bigger than b"
else
  puts "a is bigger than b."
end

# if修飾子
puts "a is smaller than b." if a < b

# case
fruit = "blueberry"

case fruit
when "apple"
  puts "apple"
when "pear"
  puts "pear"
when "blueberry"
  puts "buleberry"
else # elseは必要
  puts "not fruit"
end

# prac2.5
print "------------------prac2.5----------------------\n"
a = 0

if a < 0
  puts "a is smaller than 0."
elsif a == 0
  puts "a is 0"
else
  puts "a is bigger than 0."
end

month = 12
case month
when 1
  puts "Jan."
when 2
  puts "Feb."
when 3
  puts "Mar."
when 4
  puts "Apr."
when 5
  puts "May."
when 6
  puts "Jun"
when 7
  puts "Jul."
when 8
  puts "Aug."
when 9
  puts "Sep."
when 10
  puts "Oct."
when 11
  puts "Nov."
else
  puts "Dec."
end

# 繰り返し
(1..5).each do |i|
  puts i
end

3.times do |i|
  puts i
end

array = [1,2,3,-1,1,2,3]
sum = 0
array.each do |num|
  if num < 0
    break
  end
  sum += num
end

puts sum

sum = 0
array.each do |num|
  if num < 0
   next
  end
  sum += num
end
puts sum

array = [1,2,3,4,5]
sum = 0
array.each do |num|
  sum += num
  if sum % 3 == 0
    redo
  end
end
puts sum

# prac2.6
print "------------------prac2.6----------------------\n"

for i in (1..100)
  puts i
end

(1..100).each do |i|
  puts i
end

100.times do |i|
  puts i + 1
end

# 理解度チェック
# prac2.5
print "------------------理解度----------------------\n"
(1..100).each do |i|
  if i % 3 == 0
    puts i
  end
end

(1..100).each do |i|
  if i % 3 == 0 && i % 5 != 0
    puts i
  end
end
