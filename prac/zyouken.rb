# coding: utf-8
a = 10
b = 10

if b > a
  print "bはaよりも大きい\n"
elsif b == a
  print "bとaは同じ\n"
else
  print "bはaより小さい\n"
end

# unless ifとちょうど反対の役割を果たす
a = 10
b = 20
unless a > b
  print "unless aはbより大きくない\n"
end
