# frozen_string_literal: true

def DalybaIsSavoSkaitmens
  k = 0
  x = 1
  while k < 20
    xtemp = x
    i = 0
    while xtemp != 0
      i += 1
      xtemp /= 10
    end
    x1 = x1temp = x2 = j = 0
    x1 = x
    x2 = x
    while x1 != 0
      x1temp = x1 % 10
      break if x1temp.zero?

      j += 1 if (x2 % x1temp).zero?
      x1 /= 10
    end
    if j == i
      puts x.to_s
      k += 1
    end
    x += 1
  end
  x -= 1
end
