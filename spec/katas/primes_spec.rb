require './katas/first_n_primes/lib/primes'
require 'prime'

RSpec.describe Primes do
  subject { described_class.first(n) }

  describe ".first" do

    shared_examples "result" do |input, expected_result|

      context "when n = '#{input}'" do
        let(:n) { input }

        example "returns '#{expected_result}'" do
          expect(subject).to eq(expected_result)
        end
      end
    end

    (2..500).to_a.shuffle.take(50).each do |value|
      expected_result = Prime.first(value)
      include_examples "result", value, expected_result
    end
  end
end
