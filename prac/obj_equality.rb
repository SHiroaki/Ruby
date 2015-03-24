# coding: utf-8
ary1 = []
ary2 = []

# すべてのオブジェクトはアイデンティティと値を持っている
# アイデンティティは全てのオブジェクトに対して一意に決まる
# 値はオブジェクトが持っている情報のこと

# アイデンティティの確認 object_id
# オブジェクトが同じかどうか equal?
p ary1.object_id
p ary2.object_id

str1 = "foo"
str2 = str1
str3 = "f" + "o" + "o"
p str1.equal?(str2)
p str1.equal?(str3) # 値は同じだけどオブジェクトのIDは違う

# 値を比較するには == を使う
p str1 == str3

# == とeql? の違い
p 1.0 == 1
p 1.0.eql? 1

# == はクラスが違っていても適当に変換してから比較する
# eql? は変換せずに比較を行う

hash = {0 => "0"}
p hash[0.0] #ハッシュ内部のkeyと与えられたkeyの比較を厳密に行うときは使う
