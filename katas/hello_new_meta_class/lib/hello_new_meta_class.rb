module Foo
  def self.const_missing(name)
    self.const_set(name, Class.new)
    return "Hello, #{name}!"
  end
end
