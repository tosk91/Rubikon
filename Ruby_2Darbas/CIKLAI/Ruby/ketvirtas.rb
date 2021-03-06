# frozen_string_literal: true

def Palindromas
  i = x = 1
  while i <= 1
    x1 = x2 = 0
    x1 = x
    while x1 != 0
      x2 = x2 * 10 + x1 % 10
      x1 /= 10
    end
    xkv = x * x
    a = xkv
    b = 0
    while a != 0
      b = b * 10 + a % 10
      a /= 10
    end
    if x2 == x && b == xkv
      puts "#{i}-asis palindromas: #{x2}"
      puts "jo kv. irgi palindromas: #{xkv}"
      i += 1
    end
    x += 1
  end
  x2
end
