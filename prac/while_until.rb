# coding: utf-8
sum = 0
i = 1
while sum < 50 # sumが50を超えるときのiはよくわからない
  sum += i
  i += 1
end

print sum, "\n"

# until
# while文と見た目は同じだが判定が逆になる
# whileは条件が成立している間繰り返すが、untilは条件が成立するまで繰り返す

sum = 0
i = 1
until sum >= 50
  sum += 1
  i += 1
end
print sum,"\n"

#while文で書き直すと

while !(sum >= 50)
  sum += 1
  i += 1
end

print sum,"\n"
