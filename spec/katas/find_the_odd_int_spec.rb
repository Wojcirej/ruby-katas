require './katas/find_the_odd_int/lib/find_the_odd_int'

RSpec.describe "#find_the_odd_int" do
  subject { find_the_odd_int(numbers) }

  shared_examples "result" do |numbers, expected_result|

    context "when numbers = '#{numbers}'" do
      let(:numbers) { numbers }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", [20, 1, -1, 2, -2, 3, 3, 5, 5, 1, 2, 4, 20, 4, -1, -2, 5], 5
  include_examples "result", [1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5], -1
  include_examples "result", [20, 1, 1, 2, 2, 3, 3, 5, 5, 4, 20, 4, 5], 5
  include_examples "result", [10], 10
  include_examples "result", [1, 1, 1, 1, 1, 1, 10, 1, 1, 1, 1], 10
  include_examples "result", [8, 13, 6, 20, 3, 1, 6, 2, 8, 18, 18, 2, 6, 10, 20, 10, 6, 1, 13, 18, 3], 18
  include_examples "result", [8, 5, 11, 11, 20, 9, 9, 14, 1, 5, 20, 20, 4, 1, 8, 4, 12, 14, 12], 20
  include_examples "result", [10, 4, 10, 4, 4, 3, 19, 8, 19, 8, 4], 3
  include_examples "result", [17, 3, 5, 18, 7, 9, 3, 5, 9, 17, 11, 7, 18], 11
  include_examples "result", [11, 6, 5, 11, 1, 10, 11, 6, 2, 2, 11, 11, 10, 15, 15, 11, 1], 5
  include_examples "result", [9, 1, 18, 9, 18, 19, 19, 19, 14, 14, 1], 19
  include_examples "result", [19, 6, 11, 6, 6, 19, 3, 14, 1, 12, 12, 14, 16, 3, 11, 19, 16, 19, 6, 12, 1], 12
  include_examples "result", [6, 17, 16, 16, 2, 16, 10, 8, 16, 8, 16, 17, 6, 8, 2, 8, 1, 10, 16], 1
  include_examples "result", [10, 7, 11, 4, 10, 2, 18, 11, 2, 16, 13, 5, 5, 7, 16, 7, 13, 4, 18, 18, 7], 18
  include_examples "result", [10, 10, 5, 16, 5, 8, 16, 12, 12, 3, 8], 3
  include_examples "result", [19, 5, 9, 9, 2, 17, 6, 19, 17, 2, 5], 6
  include_examples "result", [4, 15, 10, 4, 12, 15, 12], 10
  include_examples "result", [19, 18, 1, 8, 13, 1, 18, 19, 17, 8, 17], 13
  include_examples "result", [6, 11, 11, 6, 16], 16
  include_examples "result", [7, 16, 17, 20, 7, 3, 9, 3, 5, 20, 18, 16, 20, 14, 5, 9, 20, 14, 17], 18
  include_examples "result", [7, 13, 7, 13, 8, 16, 10, 8, 10, 16, 20], 20
  include_examples "result", [17, 13, 13, 18, 20, 12, 13, 20, 17, 19, 19, 19, 12, 20, 20, 20, 20, 13, 18], 19
  include_examples "result", [19, 7, 4, 4, 8, 19, 7, 8, 7], 7
  include_examples "result", [11, 3, 5, 17, 12, 4, 4, 12, 5, 10, 5, 5, 5, 10, 17, 10, 4, 10, 11, 5, 4], 3
  include_examples "result", [11, 16, 19, 6, 9, 6, 11, 9, 3, 4, 16, 14, 9, 9, 19, 4, 16, 14, 3, 9, 9, 4, 4], 16
  include_examples "result", [7, 20, 9, 12, 12, 19, 12, 1, 9, 20, 7, 8, 12, 8, 19], 1
  include_examples "result", [2, 4, 3, 16, 4, 4, 16, 4, 1, 3, 1, 4, 4, 16, 14, 14, 2], 16
  include_examples "result", [5, 15, 19, 12, 13, 10, 3, 5, 4, 7, 13, 10, 16, 3, 4, 16, 12, 6, 7, 6, 19], 15
  include_examples "result", [8, 19, 1, 18, 10, 8, 3, 1, 10, 4, 19, 10, 20, 10, 4, 20, 18], 3
  include_examples "result", [3, 11, 4, 4, 11, 10, 6, 3, 3, 3, 4, 4, 6], 10
  include_examples "result", [13, 13, 16, 16, 13], 13
  include_examples "result", [15, 19, 5, 18, 8, 5, 17, 5, 15, 14, 5, 15, 17, 19, 15, 14, 8], 18
  include_examples "result", [19, 7, 14, 19, 1, 7, 14], 1
  include_examples "result", [14, 18, 2, 20, 16, 18, 16, 6, 13, 5, 16, 14, 6, 5, 20, 6, 14, 6, 2, 13, 14, 16, 10], 10
  include_examples "result", [16, 1, 16, 15, 19, 20, 15, 20, 19], 1
  include_examples "result", [17, 19, 8, 3, 8, 17, 11, 12, 17, 5, 3, 17, 12, 4, 19, 6, 4, 5, 19, 11, 8, 19, 6], 8
  include_examples "result", [5, 5, 5, 5, 5, 14, 5, 19, 2, 14, 2], 19
  include_examples "result", [20, 6, 2, 11, 8, 7, 10, 12, 6, 8, 3, 17, 20, 11, 12, 10, 14, 17, 14, 3, 2], 7
  include_examples "result", [1, 1, 17, 11, 17, 1, 20, 20, 14, 20, 3, 17, 1, 3, 3, 3, 17, 3, 3, 14, 3, 3, 11], 20
  include_examples "result", [20, 1, 19, 1, 18, 20, 18, 1, 19], 1
  include_examples "result", [4, 2, 4, 2, 3, 18, 18, 3, 5, 4, 5], 4
  include_examples "result", [4, 12, 4, 4, 18, 12, 15, 18, 4, 4, 4], 15
  include_examples "result", [17, 5, 17, 3, 3, 2, 5], 2
  include_examples "result", [4, 13, 8, 8, 8, 14, 14, 4, 10, 13, 5, 5, 14, 8, 14], 10
  include_examples "result", [14, 8, 12, 19, 19, 17, 1, 2, 5, 5, 12, 16, 14, 3, 16, 1, 19, 2, 17, 19, 8], 3
end
