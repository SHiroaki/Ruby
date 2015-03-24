# coding: utf-8
=begin
/pattern/ =~ マッチングしたい文字列

マッチングが成功した場合は、マッチした部分の 位置 を返す
失敗した場合は nil を返す
=end

p /ruby/ =~ "ruby"

# nilの意味
# オブジェクトが存在しないことを表す
names = ["ab", "bc", "cd"]

names.each do |name|
  if /b/ =~ name then
    puts name
  end
end

