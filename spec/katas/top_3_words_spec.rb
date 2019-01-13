require './katas/top_3_words/lib/top_3_words'

def text
  "In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income."
end

RSpec.describe "#top_3_words" do
  subject { top_3_words(text) }

  shared_examples "result" do |text, expected_result|

    context "when text = '#{text}'" do
      let(:text) { text }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "  //wont won't won't", ["won't", "wont"]
  include_examples "result", "e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e", ["e", "ddd", "aa"]
  include_examples "result", text, ["a", "of", "on"]
  include_examples "result", "  , e   .. ", ["e"]
  include_examples "result", "  ...  ", []
  include_examples "result", "  '  ", []
  include_examples "result", "  '''  ", []
end
