require './katas/convert_string_to_array/lib/convert_string_to_array'

def base
  "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
end

def generate_random_case
  (0..randint(1, 15)).map{(0..randint(1, 20)).map{ base[randint(0, base.length - 1)] }.join }.join(" ")
end

def randint(a, b)
  rand(b -a + 1) + a
end

def solution(input)
  input.split(" ")
end

RSpec.describe "#convert_string_to_array" do
  subject { convert_string_to_array(string) }

  shared_examples "result" do |string, expected_result|

    context "when string = '#{string}'" do
      let(:string) { string }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "Robin Singh", ["Robin", "Singh"]
  include_examples "result", "CodeWars", ["CodeWars"]
  include_examples "result", "I love arrays they are my favorite", ["I", "love", "arrays", "they", "are", "my", "favorite"]
  include_examples "result", "1 2 3", ["1", "2", "3"]
  include_examples "result", "", []
  95.times do
    input = generate_random_case
    include_examples "result", input, solution(input)
  end
end
