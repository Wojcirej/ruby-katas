require 'weirdcase'

RSpec.describe "#weirdcase" do
  subject { weirdcase(string) }

  shared_examples "result" do |input, expected_result|

    context "when string = '#{input}'" do
      let(:string) { input }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  context "when input is single word" do

    include_examples "result", "This", "ThIs"
    include_examples "result", "is", "Is"
    include_examples "result", "a", "A"
    include_examples "result", "test", "TeSt"
    include_examples "result", "looks", "LoOkS"
    include_examples "result", "like", "LiKe"
    include_examples "result", "you", "YoU"
    include_examples "result", "passed", "PaSsEd"
  end

  context "when input contains multiple words" do

    include_examples "result", "This is a test", "ThIs Is A TeSt"
    include_examples "result", "Looks like you passed", "LoOkS LiKe YoU PaSsEd"
    include_examples "result", "This is the final test case", "ThIs Is ThE FiNaL TeSt CaSe"
    include_examples "result", "Just kidding", "JuSt KiDdInG"
    include_examples "result", "Ok fine you are done now", "Ok FiNe YoU ArE DoNe NoW"
  end
end
