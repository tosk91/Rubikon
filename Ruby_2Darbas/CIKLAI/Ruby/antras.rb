sk1 = 0
sk2 = 0
a = 0
sk3 = 0
b = 0
i = 0
puts "Iveskite skaiciu"
a = gets
sk1 = a.to_i
while sk1 != 0
  sk3=10 * sk3.to_i+sk1.to_i % 10
  sk1=sk1 / 10
  i = i + 1
end
puts "skaicius su padvigubintais skaitmenimis:"
while i > 0
    sk2=sk2*100+(sk3%10)*10+(sk3%10);
    sk3=sk3/10;
    i = i - 1
end
puts sk2