require './katas/pascal_case_to_snake_case/lib/pascal_case_to_snake_case'

RSpec.describe "#pascal_case_to_snake_case" do
  subject { pascal_case_to_snake_case(string) }

  shared_examples "result" do |string, expected_result|

    context "when string = '#{string}'" do
      let(:string) { string }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "TestController", "test_controller"
  include_examples "result", "MoviesAndBooks", "movies_and_books"
  include_examples "result", "App7Test", "app7_test"
  include_examples "result", 'ThisIsBeautifulDay', 'this_is_beautiful_day'
  include_examples "result", 'Am7Days', 'am7_days'
  include_examples "result", 'My3CodeIs4TimesBetter', 'my3_code_is4_times_better'
  include_examples "result", 5, '5'
end
