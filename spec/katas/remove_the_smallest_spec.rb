require './katas/remove_the_smallest/lib/remove_the_smallest'

RSpec.describe "#remove_the_smallest" do
  subject { remove_the_smallest(numbers) }

  shared_examples "result" do |numbers, expected_result|

    context "when numbers = '#{numbers}'" do
      let(:numbers) { numbers }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", [1, 2, 3, 4, 5], [2, 3, 4, 5]
  include_examples "result", [5, 3, 2, 1, 4], [5, 3, 2, 4]
  include_examples "result", [2, 2, 1, 2, 1], [2, 2, 2, 1]
  include_examples "result", [], []

  it "does not mutate original array" do
    original_array = [1, 2, 3, 4, 5]
    copy_of_array = original_array.dup
    remove_the_smallest(original_array)
    expect(original_array).to eq(copy_of_array)
  end
end
