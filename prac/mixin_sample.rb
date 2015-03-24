# coding: utf-8
module MyModule
  # 共通して提供したいメソッドなど
end

class MyClass1
  include MyModule # includeでモジュールをクラス定義の中に取り込む
  # Class1に固有のメソッドなど
end

class MyClass2
  include MyModule
  # class2に固有のメソッドなど
end
