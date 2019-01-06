require './katas/primorial_of_number/lib/primorial_of_number'

RSpec.describe "#primorial_of_number" do
  subject { primorial_of_number(n) }

  shared_examples "result" do |n, expected_result|

    context "when n = '#{n}'" do
      let(:n) { n }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", 3, 30
  include_examples "result", 4, 210
  include_examples "result", 5, 2310
  include_examples "result", 8, 9699690
  include_examples "result", 9, 223092870
  include_examples "result", 11, 200560490130
  include_examples "result", 14, 13082761331670030
  include_examples "result", 15, 614889782588491410
end
