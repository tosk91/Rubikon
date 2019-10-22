# frozen_string_literal: true

def DvigubasSkaitmenys(a)
  sk2 = 0
  sk3 = 0
  i = 0
  sk1 = a.to_i
  while sk1 != 0
    sk3 = 10 * sk3.to_i + sk1.to_i % 10
    sk1 /= 10
    i += 1
  end
  puts 'skaicius su padvigubintais skaitmenimis:'
  while i.positive?
    sk2 = sk2 * 100 + (sk3 % 10) * 10 + (sk3 % 10)
    sk3 /= 10
    i -= 1
  end
  #puts sk2
  return sk2
end