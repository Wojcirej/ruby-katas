require 'number_in_expanded_form'

RSpec.describe "#number_in_expanded_form" do
  subject { number_in_expanded_form(number) }

  shared_examples "result" do |number, expected_string|

    context "when number = #{number}" do
      let(:number) { number }

      example "returns '#{expected_string}'" do
        expect(subject).to eq(expected_string)
      end
    end
  end

  include_examples "result", 12, '10 + 2'
  include_examples "result", 42, '40 + 2'
  include_examples "result", 70304, '70000 + 300 + 4'

  context "when number <= 0" do
    let(:number) { 0 }

    it "throws argument error" do
      expect { subject }.to raise_error("Must be greater than 0.")
    end
  end

  context "when number is not integer" do
    let(:number) { 0.5 }

    it "throws argument error" do
      expect { subject }.to raise_error("Only integers are accepted.")
    end
  end
end
