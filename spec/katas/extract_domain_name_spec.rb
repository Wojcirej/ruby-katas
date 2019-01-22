require './katas/extract_domain_name/lib/extract_domain_name'

RSpec.describe "#extract_domain_name" do
  subject { extract_domain_name(url) }

  shared_examples "result" do |url, expected_result|

    context "when url = '#{url}'" do
      let(:url) { url }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "http://github.com/carbonfive/raygun", "github"
  include_examples "result", "http://www.zombie-bites.com", "zombie-bites"
  include_examples "result", "https://www.cnet.com", "cnet"
end
