# coding: utf-8
def copy(from, to)
  src = open(from) # ここで開けなかった場合でもensureは必ず実行される
  begin
    dst = open(to, "w")
    data = src.read
    dst.write(data)
    dst.close
  ensure
    src.close
  end
end

=begin
copy_src = ARGV[0]
copy_dst = ARGV[1]
copy(copy_src,copy_dst)
=end

# rescue修飾子
# 式1 rescue 式2

val = "123"
n = Integer(val) rescue 0 # Intrgerは整数っぽい文字列を送ったらその値を返す
# デフォルト値が欲しい時にrescue修飾子が便利
p n

# 自分でエラーを作りたいときはStanderdErrorを継承する
MyError = Class.new(StandardError) # 新しい例外クラス
MyError1 = Class.new(MyError)
