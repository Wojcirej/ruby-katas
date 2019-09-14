require "./katas/first_prime_divisor/lib/first_prime_divisor"

RSpec.describe "#first_prime_divisor" do
  subject { first_prime_divisor(number) }

  shared_examples "result" do |number, expected_result|
    context "when number = '#{number}'" do
      let(:number) { number }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", 11233, 47
  include_examples "result", 239, 239
  include_examples "result", 12744, 2
  include_examples "result", 4757, 67
  include_examples "result", 71, 71
  include_examples "result", 15, 3
end
