# coding: utf-8
ltotal = 0
wtotal = 0
ctotal = 0

ARGV.each do |file|
  begin
    # 例外を発生させる可能性のある処理
    input = open(file)
    l = 0 # ファイル内の行数
    w = 0 # ファイル内の単語数
    c = 0 # ファイル内の文字数
    
    while line = input.gets # lineは文字列の配列になってる
      l += 1
      c += line.size
      line.sub!(/^\s+/, "") # 先頭の空白を削除 sub!はレシーバ自身を変更するから!がつく
      ary = line.split(/\s+/) # 空白文字で分解する
      p line
      p ary
      w += ary.size
    end
    input.close # ファイルを閉じる

    printf("%8d %8d %8d %s\n", l, w, c, file)
    ltotal += l
    wtotal += w
    ctotal += c

  rescue => ex
    print ex.message, "\n" #例外のメッセージを出力
  end
end

printf("%8d %8d %8d %s\n", ltotal, wtotal, ctotal, "total")
