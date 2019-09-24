def letter?(item)
  item =~ /[A-Za-z]/
end
def numeric?(item)
  item =~ /[0-9]/
end
def upper?(item)
  item =~ /[A-Z]/
end
class Cezaris
  def Kodavimas(item, key)
    @item = item
    @key = key
    if !letter?(@item)
      return @item
    end
      if upper?(@item)
        return (((@item.ord + key) - 65) % 26 + 65).chr;
      end
      return (((@item.ord + key) - 97) % 26 + 97).chr;
  end

  def UzkoduokMane(input, raktas)
    @input = input
    @raktas = raktas
    output = ''
    if @input == ''
      return output
    end
    for ch in @input.each_char
    
      if ch == ' '
        
      else
          output += Kodavimas(ch, @raktas)
      end
    end
    return output
  end

  def AtkoduokMane(input, raktas)
    UzkoduokMane(@input, 26-@raktas)
  end
end

puts "Iveskite teksta: "
tekstas = gets
puts "Iveskite rakta: "
raktas = gets
cezarioKodas = Cezaris.new
puts cezarioKodas.UzkoduokMane(tekstas, raktas.to_i)
puts cezarioKodas.AtkoduokMane(tekstas, raktas.to_i)


