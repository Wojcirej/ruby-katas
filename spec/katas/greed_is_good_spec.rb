require './katas/greed_is_good/lib/greed_is_good'

RSpec.describe "#greed_is_good" do
  subject { greed_is_good(dice) }

  shared_examples "result" do |dice, expected_result|

    context "when dice = '#{dice}'" do
      let(:dice) { dice }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", [2, 3, 4, 6, 2], 0
  include_examples "result", [1, 1, 1, 3, 3], 1000
  include_examples "result", [2, 2, 2, 3, 3], 200
  include_examples "result", [3, 3, 3, 3, 3], 300
  include_examples "result", [4, 4, 4, 3, 3], 400
  include_examples "result", [5, 5, 5, 3, 3], 500
  include_examples "result", [6, 6, 6, 3, 3], 600
  include_examples "result", [1, 1, 1, 1, 3], 1100
  include_examples "result", [1, 1, 1, 1, 5], 1150
  include_examples "result", [2, 4, 4, 5, 4], 450
  include_examples "result", [3, 4, 5, 3, 3], 350
  include_examples "result", [1, 5, 1, 3, 4], 250
end
