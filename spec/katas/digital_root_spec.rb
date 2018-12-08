require './katas/digital_root/lib/digital_root'

RSpec.describe "#digital_root" do
  subject { digital_root(n) }

  shared_examples "result" do |n, expected_result|

    context "when n = #{n}" do
      let(:n) { n }

      example "returns #{expected_result}" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", 16, 7
  include_examples "result", 942, 6
  include_examples "result", 132189, 6
  include_examples "result", 493193, 2
end
