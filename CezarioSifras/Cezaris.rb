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
end