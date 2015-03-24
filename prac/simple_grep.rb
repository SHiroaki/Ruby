# coding: utf-8
pattern = Regexp.new(ARGV[0]) # 新しい正規表現オブジェクトを作る
filename = ARGV[1] # 抜き出したい文字列を指定する

file = open(filename)
while text = file.gets # 読み込める(nilじゃない)限り読み込む
  if pattern =~ text then
    print text
  end
end

file.close()
