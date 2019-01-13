require './katas/roman_numerals_encoder/lib/roman_numerals_encoder'

RSpec.describe "#roman_numerals_encoder" do
  subject { roman_numerals_encoder(number) }

  shared_examples "result" do |number, expected_result|

    context "when number = '#{number}'" do
      let(:number) { number }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", 1, 'I'
  include_examples "result", 4, 'IV'
  include_examples "result", 6, 'VI'
  include_examples "result", 14, 'XIV'
  include_examples "result", 21, 'XXI'
  include_examples "result", 89, 'LXXXIX'
  include_examples "result", 91, 'XCI'
  include_examples "result", 984, 'CMLXXXIV'
  include_examples "result", 1000, 'M'
  include_examples "result", 1889, 'MDCCCLXXXIX'
  include_examples "result", 1989, 'MCMLXXXIX'
end
