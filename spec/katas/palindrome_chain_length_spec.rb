require './katas/palindrome_chain_length/lib/palindrome_chain_length'

RSpec.describe "#palindrome_chain_length" do
  subject { palindrome_chain_length(n) }

  shared_examples "result" do |n, expected_result|

    context "when n = '#{n}'" do
      let(:n) { n }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", 87, 4
  include_examples "result", 1, 0
  include_examples "result", 88, 0
  include_examples "result", 89, 24
  include_examples "result", 10, 1
end
