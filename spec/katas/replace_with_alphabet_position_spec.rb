require './katas/replace_with_alphabet_position/lib/replace_with_alphabet_position'

RSpec.describe "#replace_with_alphabet_position" do
  subject { replace_with_alphabet_position(text) }

  shared_examples "result" do |text, expected_result|

    context "when text = '#{text}'" do
      let(:text) { text }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "The sunset sets at twelve o' clock.", "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
  include_examples "result", "-.-'", ""
end
