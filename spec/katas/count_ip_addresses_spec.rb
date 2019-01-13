require './katas/count_ip_addresses/lib/count_ip_addresses'

RSpec.describe "#count_ip_addresses" do
  subject { count_ip_addresses(start, end_range) }

  shared_examples "result" do |start, end_range, expected_result|

    context "when start = '#{start}', end_range = '#{end_range}'" do
      let(:start) { start }
      let(:end_range) { end_range }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "10.0.0.0", "10.0.0.50", 50
  include_examples "result", "10.0.0.0", "10.0.1.0", 256
  include_examples "result", "20.0.0.10", "20.0.1.0", 246
  include_examples "result", "150.0.0.0", "150.0.0.1", 1
  include_examples "result", "10.11.12.13", "10.11.13.0", 243
  include_examples "result", "160.0.0.0", "160.0.1.0", 256
  include_examples "result", "170.0.0.0", "170.1.0.0", 65536
  include_examples "result", "50.0.0.0", "50.1.1.1", 65793
  include_examples "result", "180.0.0.0", "181.0.0.0", 16777216
  include_examples "result", "1.2.3.4", "5.6.7.8", 67372036
end
