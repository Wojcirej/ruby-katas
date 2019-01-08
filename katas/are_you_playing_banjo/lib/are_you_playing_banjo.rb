def are_you_playing_banjo(name)
  name.downcase.chars.first == "r" ? "#{name} plays banjo" : "#{name} does not play banjo"
end
