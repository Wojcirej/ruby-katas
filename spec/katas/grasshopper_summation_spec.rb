require './katas/grasshopper_summation/lib/grasshopper_summation'

RSpec.describe "#grasshopper_summation" do
  subject { grasshopper_summation(num) }

  shared_examples "result" do |num, expected_result|

    context "when num = '#{num}'" do
      let(:num) { num }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", 1, 1
  include_examples "result", 8, 36
  include_examples "result", 22, 253
  include_examples "result", 100, 5050
  include_examples "result", 213, 22791

  95.times do
    num = rand(80)
    include_examples "result", num, (num * (num + 1) / 2)
  end
end
