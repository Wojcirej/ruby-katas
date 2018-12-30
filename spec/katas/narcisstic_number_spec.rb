require './katas/narcisstic_number/lib/narcisstic_number'

RSpec.describe "#narcisstic_number" do
  subject { narcisstic_number?(number) }

  shared_examples "result" do |number, expected_result|

    context "when number = '#{number}'" do
      let(:number) { number }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", 15, false
  include_examples "result", 153, true
  include_examples "result", 1634, true
  include_examples "result", 153, true
  include_examples "result", 1, true
  include_examples "result", 435, false
  include_examples "result", 370, true
  include_examples "result", 324, false
  include_examples "result", 371, true
  include_examples "result", 4328, false
  include_examples "result", 407, true
  include_examples "result", 3248, false
  include_examples "result", 1634, true
  include_examples "result", 8208, true
  include_examples "result", 9474, true
  include_examples "result", 54748, true
  include_examples "result", 92727, true
  include_examples "result", 93084, true
  include_examples "result", 548834, true
  include_examples "result", 1741725, true
  include_examples "result", 4210818, true
  include_examples "result", 9800817, true
  include_examples "result", 234229983, false
  include_examples "result", 9926315, true
  include_examples "result", 24678050, true
  include_examples "result", 88593477, true
  include_examples "result", 146511208, true
  include_examples "result", 472335975, true
  include_examples "result", 534494836, true
  include_examples "result", 912985153, true
  include_examples "result", 4679307774, true
  include_examples "result", 115132219018763992565095597973971522401, true
  include_examples "result", 265482386928458458, false
  include_examples "result", 27261308, false
  include_examples "result", 314487, false
  include_examples "result", 79, false
  include_examples "result", 97556732, false
  include_examples "result", 2040, false
  include_examples "result", 8, true
  include_examples "result", 935, false
  include_examples "result", 4, true
  include_examples "result", 96872, false
  include_examples "result", 86, false
  include_examples "result", 918, false
  include_examples "result", 60, false
  include_examples "result", 263, false
  include_examples "result", 886, false
  include_examples "result", 89954, false
  include_examples "result", 856, false
  include_examples "result", 123, false
  include_examples "result", 50652, false
  include_examples "result", 5843918, false
  include_examples "result", 55, false
  include_examples "result", 5781552, false
  include_examples "result", 564, false
  include_examples "result", 141, false
  include_examples "result", 55, false
  include_examples "result", 9638, false
  include_examples "result", 0, true
  include_examples "result", 7188, false
  include_examples "result", 36112, false
  include_examples "result", 7489159, false
  include_examples "result", 67936364, false
  include_examples "result", 993, false
  include_examples "result", 90446844, false
  include_examples "result", 2, true
  include_examples "result", 71838849, false
  include_examples "result", 1341672, false
  include_examples "result", 8897261, false
  include_examples "result", 556414, false
  include_examples "result", 112963, false
  include_examples "result", 9379731, false
end
