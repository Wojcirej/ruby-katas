require './katas/rot13/lib/rot13'

RSpec.describe "#rot13" do
  subject { rot13(input) }

  shared_examples "result" do |input, expected_result|

    context "when input = '#{input}'" do
      let(:input) { input }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "EBG13 rknzcyr.", "ROT13 example."
  include_examples "result", "This is my first ROT13 excercise!", "Guvf vf zl svefg EBG13 rkprepvfr!"
end
