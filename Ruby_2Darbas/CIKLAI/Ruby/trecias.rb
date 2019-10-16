# frozen_string_literal: true

e = 0.00001
n = 1
n1 = n + 1
a = 0
a1 = 0
loop do
  b = Math.sqrt((n + 1) * (n + 1) + 1) * Math.sqrt((n + 1) * (n + 1) - 1)

  a = (n + 1) / b
  b1 = Math.sqrt((n1 + 1) * (n1 + 1) + 1) * Math.sqrt((n1 + 1) * (n1 + 1) - 1)
  a1 = (n1 + 1) / b1
  n += 1
  n1 += 1
  break if (a1 - a).abs < e
end

puts "a[#{n}]: #{a}"
puts "a[#{n1}]: #{a1}"
puts "riba yra tarp #{n} ir #{n1} nariu."
