# frozen_string_literal: true

x = 1

(10..20).each do |i|
  x *= i if i.even?
end

puts "Intervalo [10;20] lyginiu skaiciu sandauga #{x}"
