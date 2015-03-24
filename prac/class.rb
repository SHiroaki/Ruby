# coding: utf-8

# newを使ってインスタンスを生成する
ary = Array.new
p ary

# オブジェクトがどのクラスに属しているかを判断する class
str = "Hello"

p ary.class
p str.class

# オブジェクトがあるクラスのインスタンスかどうか instance_of?
p ary.instance_of?(Array)
p str.instance_of?(String)


