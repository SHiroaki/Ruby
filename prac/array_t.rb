# coding: utf-8
# 転置行列を求める

def transposition(l)
  result = Array.new
  l[0].size.times do |i|
    t = Array.new
    l.each do |list|
      t << list[i]
    end
    result << t
  end
  return result
end

a = [[1,2,3,4], [5,6,7,8], [9,10,11,12], [13,14,15,16]]
p transposition(a)
