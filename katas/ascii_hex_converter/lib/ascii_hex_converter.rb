module Converter

  def self.to_hex(ascii_input)
    ascii_input.unpack("H*")[0]
  end

  def self.to_ascii(hex_input)
    [hex_input].pack("H*")
  end
end
