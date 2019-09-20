def UzkoduokMane(input, raktas)
  output = "";
  if output == ""
    return output
  end
  for ch in @input
    if ch == " "
      
    else
        output += Kodavimas(ch, @raktas)
    end
  end
  return output
end