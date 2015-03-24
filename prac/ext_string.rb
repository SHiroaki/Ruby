# coding: utf-8
class String
  # 既存のクラスの拡張
  def count_word
    ary = self.split(/\s+/) # 自分自身を空白文字列で分解する
    return ary.size # 分解後の配列の要素数を返す
  end
end

str = "Just Another Ruby Newbie"
p str.count_word
