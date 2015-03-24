# coding: utf-8

# アクセさの使い方復習すること
class Point
  attr_accessor :x, :y # アクセスメソッドを定義する
  protected :x=, :y= # x=とy=をprotectedにする

  def initialize(x=0.0, y=0.0)
    @x, @y = x, y
  end

  def swap(other) # x, yを別のPointインスタンスと入れ替えるメソッド
    tmp_x , tmp_y = @x, @y # ここで自分の持ってる値を別変数に一時保存
    @x, @y = other.x, other.y # 交換先の値を自分のインスタンス変数に代入
    other.x, other.y = tmp_x, tmp_y # 交換先のインスタンス変数に自分の値を代入
    # 同一クラス内では呼び出すことができる

    return self
  end
end

p0 = Point.new
p1 = Point.new(1.0, 2.0)

p [p0.x, p0.y]
p [p1.x, p1.y]

p0.swap(p1)

p [p0.x, p0.y]
p [p1.x, p1.y]

p0.x = 10.0
