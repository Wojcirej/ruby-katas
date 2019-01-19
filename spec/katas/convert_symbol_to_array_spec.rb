require './katas/convert_symbol_to_array/lib/convert_symbol_to_array'

RSpec.describe Symbol do
  subject { symbol.to_ary }

  it "implements 'to_ary' method" do
    expect(Symbol.instance_methods).to include(:to_ary)
  end

  describe "#to_ary" do

    shared_examples "result" do |symbol, expected_result|

      context "when symbol = '#{symbol}'" do
        let(:symbol) { symbol }

        example "returns '#{expected_result}'" do
          expect(subject).to eq(expected_result)
        end
      end
    end

    100.times do
      symbol = ('a'..'z').to_a.shuffle[0, 8].join.to_sym
      include_examples "result", symbol, [symbol]
    end
  end
end
