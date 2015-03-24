# coding: utf-8
class RingArray < Array # スーパークラスを指定する
  
  def [](i) # 演算子[]の再定義
    idx = i % size # 新しいインデックスを求める
    super(idx) # スーパークラスの同名のメソッドを呼ぶ
  end
end

eto = RingArray[
  "a", "b", "c", "d", "e"
]

p eto[6]
