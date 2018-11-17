require 'find_outlier'

RSpec.describe "#find_outlier" do
  subject { find_outlier(array) }

  shared_examples "result" do |input_array, expected_result|

    context "when input = '#{input_array}'" do
      let(:array) { input_array }

      example "returns #{expected_result}" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", [2, 4, 0, 100, 4, 11, 2602, 36], 11
  include_examples "result", [160, 3, 1719, 19, 11, 13, -21], 160
end
