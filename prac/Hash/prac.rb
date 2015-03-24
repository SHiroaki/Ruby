# coding: utf-8
# 新しいハッシュの作りかた

h = {"a"=>"a", "foo"=>"foo"}
p h["a"], h["foo"]

# 値を取り出す
h = Hash.new
h.store("R", "ruby") # 値の登録はstore
p h.fetch("R") # 値の取り出しはfetch
# p h.fetch("P") # fetchの場合keyが登録されていない場合は例外が出る
p h.fetch("P", "undef") # 第二引数はを設定するとkeyがない場合に帰ってくる

p h.fetch("N"){String.new} # ブロックも使用できる

# hashのデフォルト値

h = Hash.new(0) # ここで指定すると全てのkeyで"共有される"
h["a"] = 10
p h["asw"]

# デフォルト値を設定するブロックを記述する
# このブロックはデフォルト値が必要な時だけ起動される
h = Hash.new do |hash, key|
  hash[key] = key.upcase
end

h["a"] = 20
p h["aw"]

# fetchで指定する
h = Hash.new do |hash, key|
  hash[key] = key.upcase
end
p h.fetch("x", "undef") # デフォルト値をブロックで指定してもfetchが優先

# 削除

for i in (0..10)
  h[i] = i * 2
end

h.delete(2)
p h
# deleteは引数にブロックを持つことができる
# keyが存在しなかった場合はブロックが実行される
p h.delete("a"){|key| "no #{key}"} # #{式}で式を展開する

=begin
# 単語数カウント
count = Hash.new(0)

## 単語の集計

File.open(ARGV[0]) do |f|
  f.each_line do |line|
    words = line.split
    words.each do |word|
      count[word] += 1
    end
  end
end

count.sort{|a, b|
  # <=> は左右のオブジェクトを比較しその関係が<=>のどれになっているか
  # を調べる.<ならマイナス, =なら0, >ならプラスになる
  a[1] <=> b[1] # aは[単語、出現頻度]という配列
}.each do |key, value|
  print "#{key}:#{value}\n"
end
=end

# 練習問題
wday = Hash.new
wday[:sunday] = "日曜日"
wday[:monday] = "月曜日"
wday[:tuesday] = "火曜日"
wday[:wednesday] = "水曜日"

p wday.size

wday.each do |key, value|
  print "[#{key}]は#{value}の事です\n"
end

def str2hash(str)
  h = Hash.new
  words = str.split(/\s+/)
  k_v = []
  words.each do |w|
    k_v << w
    if k_v.size == 2
      p k_v
      h[k_v[0]] = k_v[1]
      k_v = []
    end
  end
  
  return h
end

s = "bule 青 black 黒 white 白\nred 赤"
p str2hash(s)
