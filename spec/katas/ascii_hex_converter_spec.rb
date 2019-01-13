require './katas/ascii_hex_converter/lib/ascii_hex_converter'

RSpec.describe Converter do
  subject { Converter }

  it "is a module" do
    expect(Converter.class).to eq(Module)
  end

  shared_examples "result" do |input, expected_result|

    context "when 'input' = '#{input}'" do

      example "returns '#{expected_result}'" do
        expect(subject.send(method, input)).to eq(expected_result)
      end
    end
  end

  describe ".to_hex" do
    let(:method) { :to_hex }

    include_examples "result", "Look mom, no hands", "4c6f6f6b206d6f6d2c206e6f2068616e6473"
    include_examples "result", "Java is for managers", "4a61766120697320666f72206d616e6167657273"
    include_examples "result", "Javascript is for wimps", "4a61766173637269707420697320666f722077696d7073"
    include_examples "result", "Ruby is the best", "52756279206973207468652062657374"
    include_examples "result", "Ruby is for everybody", "5275627920697320666f72206576657279626f6479"
    include_examples "result", "Ruby is for chilled people", "5275627920697320666f72206368696c6c65642070656f706c65"
  end

  describe ".to_ascii" do
    let(:method) { :to_ascii }

    include_examples "result", "4c6f6f6b206d6f6d2c206e6f2068616e6473", "Look mom, no hands"
    include_examples "result", "4a61766173637269707420697320666f722077696d7073", "Javascript is for wimps"
    include_examples "result", "4a61766120697320666f72206d616e6167657273", "Java is for managers"
    include_examples "result", "52756279206973207468652062657374", "Ruby is the best"
    include_examples "result", "5275627920697320666f72206576657279626f6479", "Ruby is for everybody"
    include_examples "result", "5275627920697320666f72206368696c6c65642070656f706c65", "Ruby is for chilled people"
  end
end
