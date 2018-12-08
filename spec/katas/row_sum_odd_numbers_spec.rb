require './katas/sum_of_odd_numbers/lib/row_sum_odd_numbers'

RSpec.describe "#row_sum_odd_numbers" do
  subject { row_sum_odd_numbers(row_index) }

  shared_examples "result" do |row_index, expected_result|

    context "when row index = #{row_index}" do
      let(:row_index) { row_index }

      example "returns #{expected_result}" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", 1, 1
  include_examples "result", 2, 8
  include_examples "result", 13, 2197
  include_examples "result", 19, 6859
  include_examples "result", 41, 68921
end
