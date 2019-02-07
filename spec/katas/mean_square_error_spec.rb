require './katas/mean_square_error/lib/mean_square_error'

RSpec.describe "#mean_square_error" do
  subject { mean_square_error(array1, array2) }

  shared_examples "result" do |array1, array2, expected_result|

    context "when array1 = '#{array1}', array2 = '#{array2}'" do
      let(:array1) { array1 }
      let(:array2) { array2 }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", [1, 2, 3], [4, 5, 6], 9
  include_examples "result", [10, 20, 10, 2], [10, 25, 5, -2], 16.5
  include_examples "result", [-1, 0], [0, -1], 1
end
