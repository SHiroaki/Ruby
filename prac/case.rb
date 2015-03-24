# coding: utf-8
tags = ["A", "ING", "PRE"]

tags.each do |tagname|
  case tagname
  when "P", "A", "I", "B", "BLOCKQUOTE"
    print tagname, "has child.\n"
  when "ING", "BR"
    print tagname, "has no child.\n"
  else
    print tagname, "connot be used.\n"
  end
end

#オブジェクトが実際にどのクラスに属するのかを判断している
array = ["a", 1, nil]
array.each do |item|
  case item
  when String
    puts "item is a String"
  when Numeric
    puts "item is a Numeric"
  else
    puts "item is something"
  end
end
