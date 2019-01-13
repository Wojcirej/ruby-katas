require './katas/calculator/lib/calculator'

RSpec.describe Calculator do

  describe "#evaluate" do
    subject { described_class.new.evaluate(expression) }

    shared_examples "result" do |expression, expected_result|

      context "when expression = '#{expression}'" do
        let(:expression) { expression }

        example "returns '#{expected_result}'" do
          expect(subject).to eq(expected_result)
        end
      end
    end

    include_examples "result", "2 / 2 + 3 * 4 - 6", 7
    include_examples "result", "4 + 5", 9
    include_examples "result", "4 * 5", 20
    include_examples "result", "4 / 5", 0.8
    include_examples "result", "4 - 5", -1
    include_examples "result", "4 + 5 * 6", 34
  end
end
