# coding: utf-8
def area(x, y, z)
  # return を書かない場合はメソッドの中で最後に得られる値が返り値となる
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz + zx) * 2 # ここが返り値
end

p area(2, 3, 4)
p area(10, 20, 30)

def max(a, b)
  # 大小比較して大きい方が戻り値になる
  if a > b
    a
  else
    b
  end
end

p max(10, 5)

def max2(a, b)
  # 大小比較して大きい方が戻り値になる
  if a > b
    return a
  end
  return b # returnは省いてもよし
end

# return の引数を省略するとnilが返される
