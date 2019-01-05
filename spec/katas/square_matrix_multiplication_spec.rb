require './katas/square_matrix_multiplication/lib/square_matrix_multiplication'

RSpec.describe "#square_matrix_multiplication" do
  subject { square_matrix_multiplication(matrix_a, matrix_b) }

  shared_examples "result" do |matrix_a, matrix_b, expected_result|

    context "when matrix_a = '#{matrix_a}', matrix_b = '#{matrix_b}'" do
      let(:matrix_a) { matrix_a }
      let(:matrix_b) { matrix_b }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", [[74]], [[62]], [[4588]]
  include_examples "result", [[1, 2], [3, 2]], [[3, 2], [1, 1]], [[5, 4], [11, 8]]
  include_examples "result", [[1, 2, 3], [3, 2, 1], [2, 1, 3]], [[4, 5, 6], [6, 5, 4], [4, 6, 5]], [[28, 33, 29], [28, 31, 31], [26, 33, 31]]
end
