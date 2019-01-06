def rot13(input)
  input.chars.map do |char|
    if small_letter?(char)
      ((char.ord + 13 - 65) % 26 + 65).chr
    elsif capital_letter?(char)
      ((char.ord + 13 - 97) % 26 + 97).chr
    else
      char
    end
  end.join
end

def small_letter?(char)
  char.ord.between?(65, 90)
end

def capital_letter?(char)
  char.ord.between?(97, 122)
end
