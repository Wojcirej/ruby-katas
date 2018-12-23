require './katas/format_words_into_sentence/lib/format_words_into_sentence'

RSpec.describe "#format_words_into_sentence" do
  subject { format_words_into_sentence(words) }

  shared_examples "result" do |input, expected_result|

    context "when input = '#{input}'" do
      let(:words) { input }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", [], ''
  include_examples "result", ['ninja', 'samurai', 'ronin'], 'ninja, samurai and ronin'
  include_examples "result", ['ninja', '', 'ronin'], 'ninja and ronin'
end
