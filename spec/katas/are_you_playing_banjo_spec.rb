require './katas/are_you_playing_banjo/lib/are_you_playing_banjo'

RSpec.describe "#are_you_playing_banjo" do
  subject { are_you_playing_banjo(name) }

  shared_examples "result" do |name, expected_result|

    context "when name = '#{name}'" do
      let(:name) { name }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "Adam", "Adam does not play banjo"
  include_examples "result", "Paul", "Paul does not play banjo"
  include_examples "result", "Ringo", "Ringo plays banjo"
  include_examples "result", "bravo", "bravo does not play banjo"
  include_examples "result", "rolf", "rolf plays banjo"
end
