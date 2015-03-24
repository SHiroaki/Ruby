# coding: utf-8
class AccTest
  public # これ以降のメソッドはすべてpublic
  def pub
    puts "public\n"
  end
  # public :pub # pubメソッドを指定しなくても良い(書かなくてもいい)
  private # これ以降のメソッドはすべてprivate
  
  def priv
    puts "private\n"
  end
  # private :priv # privメソッドをprivateに設定
end

acc = AccTest.new
acc.pub
acc.priv # 呼び出せない
