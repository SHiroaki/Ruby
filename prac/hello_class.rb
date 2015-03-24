# coding: utf-8

class HelloWorld  # クラス名は必ず大文字で始めること
  
  Version = "1.0" # 定数の定義. ::でアクセスできる

  def initialize(myname="Ruby") # initialize
    # newメソッドが呼ばれると、この関数が呼ばれる
    # newに渡した引数がそのまま渡される
    # 必要な初期化処理はここに書く
    
    @name = myname  # インスタンス変数の初期化
  end

  def self.hello(name) # HelloWorld.hello でもok
    print name, " said hello\n"
  end
  
  def hello  # インスタンスメソッド
    print "Hello world. I am ", @name, ".\n"
  end

  def name
    # アクセスメソッド
    # rubyの場合は外部から直接インスタンス変数にアクセスできない
    return @name 
  end
  
  def name=(value)
    # アクセスメソッド
    @name = value
  end

  def greet # nameメソッドを別のインスタンスメソッドから呼ぶにはselfが必要
    print "Hi, I am ", self.name, "\n"
  end

  def test_name
    name = "Ruby" # ローカル変数への代入
    self.name = "Ruby" # name=  メソッドの呼び出し
  end
  
  # 上記アクセスメソッドの代わりにアクセサを使えば一発で済む
  attr_accessor :name
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

p bob.name = "Rovert" # 実際はname("Rovertと一緒")
p bob.test_name
p bob.name
print alice.greet

HelloWorld.hello("John")
p HelloWorld::Version
