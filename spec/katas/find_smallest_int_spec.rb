require './katas/find_smallest_int/lib/find_smallest_int'

RSpec.describe "#find_smallest_int" do
  subject { find_smallest_int(array) }

  shared_examples "result" do |array, expected_result|

    context "when array = '#{array}'" do
      let(:array) { array }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", [78, 56, 232, 12, 8], 8
  include_examples "result", [78, 56, -2, 12, 8], -2
  include_examples "result", [-78, 56, -2, 12, 8], -78
  include_examples "result", [-8], -8
  include_examples "result", [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1
  include_examples "result", [-1, -2, -3, -4, -5, -6, -7, -8, -9, -10], -10
  include_examples "result", [-78, 56, 232, 12, 8], -78
  include_examples "result", [78, 56, -2, 12, -8], -8
  include_examples "result", [-8, -3], -8
  include_examples "result", [-3, -8], -8
end
