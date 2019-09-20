# def Kodavimas(simbolis, raktas)
#   if !simbolis.IsLetter
# end

def letter?(simbolis)
  simbolis =~ /[A-Za-z]/
end
def numeric?(simbolis)
  simbolis =~ /[0-9]/
end

abc = numeric?('a')
if letter?(abc)
  puts abc
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