require './katas/string_ends_with/lib/string_ends_with'

RSpec.describe "#string_ends_with?" do
  subject { string_ends_with?(text, ending) }

  shared_examples "result" do |text, ending, expected_result|

    context "when text = '#{text}', ending = '#{ending}'" do
      let(:text) { text }
      let(:ending) { ending }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "abc", "bc", true
  include_examples "result", "abc", "d", false
  include_examples "result", "samurai", "ai", true
  include_examples "result", "sumo", "omo", false
  include_examples "result", "ninja", "ja", true
  include_examples "result", "sensei", "i", true
  include_examples "result", "samurai", "ra", false
  include_examples "result", "abc", "abcd", false
  include_examples "result", "abc", "abc", true
  include_examples "result", "abcabc", "bc", true
  include_examples "result", 'ails', 'fails', false
  include_examples "result", 'fails', 'ails', true
  include_examples "result", 'this', 'fails', false
  include_examples "result", 'abc', '', true
  include_examples "result", ':-)', ':-(', false
  include_examples "result", '!@#$%^&*() :-)', ':-)', true
  include_examples "result", "abc\n", 'abc', false
end
