# coding: utf-8
# 平方根を求める

def mysqrt(n)
  # バビロニアンメソッド
  n0 = n / 2.0
  last_n = 0.0
  
  while n0 != last_n # 前回の値と比較して差がわからなければ終了
    last_n = n0
    p last_n
    n0 = (n0 + n / n0) / 2.0
  end
  return n0
end

p mysqrt(1)
