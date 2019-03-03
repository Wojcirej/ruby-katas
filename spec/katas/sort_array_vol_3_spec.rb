require './katas/sort_array_vol_3/lib/sort_array_vol_3'

RSpec.describe "#sort_array_vol_3" do
  subject { sort_array_vol_3(course_ids) }

  shared_examples "result" do |course_ids, expected_result|

    context "when course_ids = '#{course_ids}'" do
      let(:course_ids) { course_ids }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", %w(web-1305 site-1305 web-1304 site-1304), %w(site-1304 web-1304 site-1305 web-1305)
end
