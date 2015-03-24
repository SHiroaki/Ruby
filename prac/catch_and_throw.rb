# coding: utf-8
def test_throw
  throw :test # 1.  :testを引数にしてthrowを呼ぶ
end

puts "test start"
catch (:test) do
  puts "before test_thow"
  test_throw() # throwを呼んだためcatchが終了する
  puts "after test_throw"
end
puts "test end"
