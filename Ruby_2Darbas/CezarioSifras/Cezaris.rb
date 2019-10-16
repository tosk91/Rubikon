# frozen_string_literal: true

def letter?(item)
  item =~ /[A-Za-z]/
end

def numeric?(item)
  item =~ /[0-9]/
end

def upper?(item)
  item =~ /[A-Z]/
end

# Cezaris
class Cezaris
  def kodavimas(item, key)
    @item = item
    @key = key
    return @item unless letter?(@item)
    return (((@item.ord + key) - 65) % 26 + 65).chr if upper?(@item)

    (((@item.ord + key) - 97) % 26 + 97).chr
  end

  def uzkoduok_mane(input, raktas)
    @input = input
    @raktas = raktas
    output = ''
    return output if @input == ''

    @input.each_char.each do |ch|
      output += kodavimas(ch, @raktas) unless ch == ' '
    end
    output
  end

  def atkoduok_mane(_input, _raktas)
    uzkoduok_mane(@input, 26 - @raktas)
  end
end

puts 'Iveskite teksta: '
tekstas = gets
puts 'Iveskite rakta: '
raktas = gets
cezario_kodas = Cezaris.new
puts cezario_kodas.uzkoduok_mane(tekstas, raktas.to_i)
puts cezario_kodas.atkoduok_mane(tekstas, raktas.to_i)
