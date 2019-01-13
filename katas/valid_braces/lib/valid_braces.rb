def valid_braces?(braces)
  (braces.length / 2).times do
    braces.sub!("{}", "")
    braces.sub!("[]", "")
    braces.sub!("()", "")
  end
  braces.empty?
end
