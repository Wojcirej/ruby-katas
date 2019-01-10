require './katas/automorphic_number/lib/automorphic_number'

RSpec.describe "#automorphic_number" do
  subject { automorphic_number(n) }

  shared_examples "result" do |n, expected_result|

    context "when n = '#{n}'" do
      let(:n) { n }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end
  include_examples "result", 1, "Automorphic"
  include_examples "result", 3, "Not!!"
  include_examples "result", 6, "Automorphic"
  include_examples "result", 9, "Not!!"
  include_examples "result", 25, "Automorphic"
  include_examples "result", 53, "Not!!"
  include_examples "result", 76, "Automorphic"
  include_examples "result", 95, "Not!!"
  include_examples "result", 625, "Automorphic"
  include_examples "result", 225, "Not!!"
  include_examples "result", 471, "Not!!"
  include_examples "result", 511, "Not!!"
  include_examples "result", 9376, "Automorphic"
  include_examples "result", 4, "Not!!"
  include_examples "result", 393, "Not!!"
  include_examples "result", 3981, "Not!!"
  include_examples "result", 31748, "Not!!"
  include_examples "result", 35107, "Not!!"
  include_examples "result", 322, "Not!!"
  include_examples "result", 38058, "Not!!"
  include_examples "result", 74, "Not!!"
  include_examples "result", 25076, "Not!!"
  include_examples "result", 63, "Not!!"
  include_examples "result", 687, "Not!!"
  include_examples "result", 376, "Automorphic"
  include_examples "result", 62705, "Not!!"
  include_examples "result", 470, "Not!!"
  include_examples "result", 728, "Not!!"
  include_examples "result", 18415, "Not!!"
  include_examples "result", 22041, "Not!!"
  include_examples "result", 17949, "Not!!"
  include_examples "result", 675, "Not!!"
  include_examples "result", 6193, "Not!!"
  include_examples "result", 780, "Not!!"
  include_examples "result", 43, "Not!!"
  include_examples "result", 12275, "Not!!"
  include_examples "result", 20890, "Not!!"
  include_examples "result", 10135, "Not!!"
  include_examples "result", 40600, "Not!!"
  include_examples "result", 7, "Not!!"
  include_examples "result", 55445, "Not!!"
end
