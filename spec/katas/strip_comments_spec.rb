require './katas/strip_comments/lib/strip_comments'

RSpec.describe "#strip_comments" do
  subject { strip_comments(input, markers) }

  shared_examples "result" do |input, markers, expected_result|

    context "when input = '#{input}', markers = '#{markers}'" do
      let(:input) { input }
      let(:markers) { markers }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "apples, plums % and bananas\npears\noranges !applesauce", ["%", "!"], "apples, plums\npears\noranges"
  include_examples "result", "Q @b\nu\ne -e f g", ["@", "-"], "Q\nu\ne"
end
