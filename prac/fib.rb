# coding: utf-8
# フィボナッチ数列を求める

def fib(n)
  if n < 2
    # そのまま返せばいい
    return n
  else
    return fib(n-2) + fib(n-1)
  end
end

num = ARGV[0].to_i
p fib(num)
