require './katas/first_non_repeating_character/lib/first_non_repeating_character'

RSpec.describe "#first_non_repeating_character" do
  subject { first_non_repeating_character(string) }

  shared_examples "result" do |string, expected_result|

    context "when string = '#{string}'" do
      let(:string) { string }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "a", "a"
  include_examples "result", "", ""
  include_examples "result", "stress", "t"
  include_examples "result", "moonmen", "e"
  include_examples "result", "sTreSS", "T"
end
