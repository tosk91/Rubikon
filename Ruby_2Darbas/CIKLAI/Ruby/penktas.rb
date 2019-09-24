k = 0
x = 1
while k < 20
  xtemp = x
  i = 0
  while xtemp != 0
    i = i + 1
    xtemp = xtemp / 10
  end
  x1 = x1temp = x2 = j = 0
  x1 = x
  x2 = x
  while x1 != 0
    x1temp = x1 % 10
    if x1temp == 0
      break
    end
    if x2 % x1temp == 0
      j = j + 1
    end
    x1 = x1 / 10
  end
  if j == i
    puts "#{x}"
    k = k + 1
  end
  x = x + 1
end