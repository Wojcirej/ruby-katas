require './katas/hello_new_meta_class/lib/hello_new_meta_class'
require 'pry'

RSpec.describe Foo do

  context "when constant = 'Bar" do

    example "returns 'Hello, Bar!'" do
      expect(Foo::Bar).to eq("Hello, Bar!")
    end
  end

  context "when constant = 'Lol" do

    example "returns 'Hello, Lol!'" do
      expect(Foo::Lol).to eq("Hello, Lol!")
    end
  end

  context "when constant = 'Lemon" do

    example "returns 'Hello, Lemon!'" do
      expect(Foo::Lemon).to eq("Hello, Lemon!")
    end
  end
end
