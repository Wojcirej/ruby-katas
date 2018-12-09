require './katas/is_divisible/lib/is_divisible'

RSpec.describe "#is_divisible" do
  subject { is_divisible(n, x, y) }

  shared_examples "result" do |n, x, y, expected_result|

    context "n = #{n}, x = #{x}, y = #{y}" do
      let(:n) { n }
      let(:x) { x }
      let(:y) { y }

      example "returns #{expected_result}" do
        expect(subject).to be expected_result
      end
    end
  end

  include_examples "result", 99, 7, 1, false
  include_examples "result", 432, 4, 9, true
  include_examples "result", 57, 1, 14, false
  include_examples "result", 2401, 8, 15, false
  include_examples "result", 136, 5, 9, false
  include_examples "result", 481, 3, 20, false
  include_examples "result", 112, 2, 14, true
  include_examples "result", 1701, 5, 17, false
  include_examples "result", 487, 3, 18, false
  include_examples "result", 601, 4, 15, false
  include_examples "result", 761, 10, 19, false
  include_examples "result", 130, 10, 13, true
  include_examples "result", 41, 4, 2, false
  include_examples "result", 70, 1, 14, true
  include_examples "result", 73, 8, 3, false
  include_examples "result", 244, 9, 9, false
  include_examples "result", 180, 10, 1, true
  include_examples "result", 1672, 8, 11, true
  include_examples "result", 86, 5, 1, false
  include_examples "result", 1409, 8, 16, false
  include_examples "result", 90, 1, 15, true
  include_examples "result", 2128, 8, 19, true
  include_examples "result", 496, 5, 9, false
  include_examples "result", 325, 5, 13, true
  include_examples "result", 336, 2, 14, true
  include_examples "result", 397, 6, 11, false
  include_examples "result", 31, 1, 6, false
  include_examples "result", 80, 10, 1, true
  include_examples "result", 520, 2, 20, true
  include_examples "result", 1153, 8, 12, false
  include_examples "result", 240, 4, 15, true
  include_examples "result", 560, 5, 8, true
  include_examples "result", 864, 8, 18, true
  include_examples "result", 288, 2, 9, true
  include_examples "result", 55, 1, 9, false
  include_examples "result", 120, 5, 8, true
  include_examples "result", 378, 7, 18, true
  include_examples "result", 1248, 8, 13, true
  include_examples "result", 154, 3, 17, false
  include_examples "result", 390, 6, 13, true
  include_examples "result", 2296, 9, 17, false
  include_examples "result", 1800, 10, 20, true
  include_examples "result", 2380, 7, 20, true
  include_examples "result", 31, 1, 10, false
  include_examples "result", 136, 9, 3, false
  include_examples "result", 361, 2, 15, false
  include_examples "result", 162, 3, 3, true
  include_examples "result", 2551, 10, 15, false
  include_examples "result", 1248, 6, 16, true
  include_examples "result", 161, 5, 2, false
  include_examples "result", 129, 4, 2, false
  include_examples "result", 336, 7, 6, true
  include_examples "result", 991, 6, 15, false
  include_examples "result", 936, 5, 11, false
  include_examples "result", 761, 4, 10, false
  include_examples "result", 136, 3, 15, false
  include_examples "result", 18, 9, 2, true
  include_examples "result", 381, 10, 2, false
  include_examples "result", 180, 10, 6, true
  include_examples "result", 90, 5, 6, true
  include_examples "result", 65, 2, 16, false
  include_examples "result", 617, 8, 7, false
  include_examples "result", 589, 7, 7, false
  include_examples "result", 448, 2, 14, true
  include_examples "result", 560, 7, 5, true
  include_examples "result", 2160, 8, 15, true
  include_examples "result", 24, 2, 3, true
  include_examples "result", 151, 3, 5, false
  include_examples "result", 20, 2, 1, true
  include_examples "result", 541, 9, 4, false
  include_examples "result", 665, 5, 7, true
  include_examples "result", 1080, 5, 12, true
  include_examples "result", 61, 1, 20, false
  include_examples "result", 757, 6, 7, false
  include_examples "result", 171, 1, 19, true
  include_examples "result", 60, 1, 10, true
  include_examples "result", 841, 8, 15, false
  include_examples "result", 12, 2, 1, true
  include_examples "result", 60, 3, 5, true
  include_examples "result", 90, 1, 5, true
end
