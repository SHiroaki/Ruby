# coding: utf-8
print "break\n"
i = 0
proglangs = [
  "Perl",
  "Pyhton",
  "Ruby",
  "Scheme"
]

proglangs.each do |lang|
  i += 1
  if i == 3
    break #ループを全て止める
  end
  p [i, lang]
end

print "\nnext\n"
i = 0

proglangs.each do |lang|
  i += 1
  if i == 3
    next # i==3つまりRubyが飛ばされて次のループの処理に進む(iも増える)
  end
  p [i, lang]
end

# redoは滅多に使わない
print "\nredoの例\n"
i = 0
proglangs.each do |lang|
  i += 1
  if i == 3
    redo # 繰り返しの先頭(i += 1)に戻るだけでlangの値は変化しない
  end
  p [i, lang]
end
