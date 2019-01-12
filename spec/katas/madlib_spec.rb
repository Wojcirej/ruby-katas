require './katas/madlib/lib/madlib'

RSpec.describe "#madlib" do
  subject { string.madlib(name) }

  shared_examples "result" do |string, name, expected_result|

    context "when string = '#{string}', name = '#{name}'" do
      let(:string) { string }
      let(:name) { name }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "I killed him", "Bob", "I killed Bob"
  include_examples "result", "I told her no", "Sally", 'I told Sally no'
  include_examples "result", "He offered me a job", "Your boss", 'Your boss offered me a job'
  include_examples "result", "It fell on it's face", "the piano", "The piano fell on the piano's face"
  include_examples "result", "It fell on it's face", "chuck Norris", "Chuck Norris fell on chuck Norris's face"
  include_examples "result", "This guy is amazing. He never lets you down.", "This amazing guy", "This guy is amazing. This amazing guy never lets you down."
  include_examples "result", "", "Bob", ""
  include_examples "result", "'And why are children born to such men as you? If you were not a father there would be nothing I could reproach you with,' said Anna Pavlovna, looking up pensively", "Bob", "'And why are children born to such men as you? If you were not a father there would be nothing I could reproach you with,' said Anna Pavlovna, looking up pensively"
  include_examples "result", " She was, as she said, suffering from la grippe; grippe being then a new word in St", "Bob", " Bob was, as Bob said, suffering from la grippe; grippe being then a new word in St"
  include_examples "result", " The subdued smile which, though it did not suit her faded features, always played round her lips expressed, as in a spoiled child, a continual consciousness of her charming defect, which she neither wished, nor could, nor considered it necessary, to correct", "Bob", " The subdued smile which, though Bob did not suit Bob faded features, always played round Bob lips expressed, as in a spoiled child, a continual consciousness of Bob charming defect, which Bob neither wished, nor could, nor considered Bob necessary, to correct"
  include_examples "result", "I should have helped him or HER with it.", "Bob", "I should have helped Bob or Bob with Bob."
end

RSpec.describe String do

  it "has defined instance method 'madlib'" do
    expect(String.instance_methods).to include(:madlib)
  end
end
