# coding: utf-8
# 素数かどうか判定する
include Math

def istimes?(pr, n)
  # prがnで割り切れるかどうか
  if pr % n == 0
    return TRUE
  else
    return FALSE
  end
end


def primes(n)
  # エラトステネスの篩でnまでの整数のうち素数だけを出力する
  ary = Array.new(n){|i| i + 1}
  ary.shift   # 1は除く
  
  prime_ary = []
  stop = sqrt(n)

  while TRUE
    prime_ary << ary.shift # 先頭の素数を素数リストに追加
    # 探索リストの先頭値
    top_of_serach_ary = ary[0]

    # 素数リストに追加された値の倍数を削除する
    ary.delete_if{|i| istimes?(i, prime_ary[-1])}

    # 探索リストの先頭がsqrt(n)に達したら終了
    if stop < top_of_serach_ary
      prime_ary = prime_ary + ary
      break
    end
  end
  return prime_ary
end

x120 = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113]

p primes(120) == x120
p primes(120)
