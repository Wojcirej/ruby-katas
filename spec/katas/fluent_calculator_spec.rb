require './katas/fluent_calculator/lib/fluent_calculator'

def operator_method_symbols
  %i(plus minus times divided_by)
end

def numbers_method_symbols
  %i(zero one two three four five six seven eight nine)
end

RSpec.describe Calc do
  subject { described_class.new }

  operator_method_symbols.each do |method|
    it "implements '#{method}' method" do
      expect(described_class.instance_methods).to include(method)
    end

    describe "##{method}" do

      it "sets operation" do
        expect(described_class.new.zero.send(method).send(:operation)).to be_truthy
      end
    end
  end

  numbers_method_symbols.each_with_index do |method, index|
    it "implements '#{method}' method" do
      expect(described_class.instance_methods).to include(method)
    end

    describe "##{method}" do

      context "when operation not set" do

        it "sets number to #{index}" do
          expect(described_class.new.send(method).send(:number)).to eq(index)
        end
      end

      context "when number and operation set" do

        it "returns result" do
          expect(described_class.new.zero.plus.send(method)).to eq(index)
        end
      end
    end
  end
end
