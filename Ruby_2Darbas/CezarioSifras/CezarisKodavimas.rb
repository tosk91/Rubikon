def letter?(item)
  item =~ /[A-Za-z]/
end
def numeric?(item)
  item =~ /[0-9]/
end
def upper?(item)
  item =~ /[A-Z]/
end

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
# private char Kodavimas(char simbolis, int raktas)
#         {
#             if (!char.IsLetter(simbolis))
#                 return simbolis;
#             if (char.IsUpper(simbolis))
#                 return (char)(((simbolis + raktas) - 65) % 26 + 65);
#             return (char)(((simbolis + raktas) - 97) % 26 + 97);
#             //char d = char.IsUpper(simbolis) ? 'A' : 'a';
#             //return (char)(((simbolis + raktas - d) % 26) + d);
#         }