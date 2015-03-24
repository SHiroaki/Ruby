# coding: utf-8
class HelloCount
  @@count = 0 # クラス変数.このクラス全てのインスタンスで共有できる

  def HelloCount.count # 呼び出し回数を参照
    @@count
  end

  def initialize(myname="Ruby")
    @name = myname
  end
  
  def hello
    @@count += 1 # 呼び出し回数を加算する
    print "Hello world. I am ", @name, ".\n"
  end
end

bob = HelloCount.new("Bob")
alice = HelloCount.new("Alice")
ruby = HelloCount.new

p HelloCount.count

bob.hello
alice.hello
ruby.hello

p HelloCount.count # 共通だから増える
