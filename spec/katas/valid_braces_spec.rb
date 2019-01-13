require './katas/valid_braces/lib/valid_braces'

RSpec.describe "#valid_braces?" do
  subject { valid_braces?(braces) }

  shared_examples "result" do |braces, expected_result|

    context "when braces = '#{braces}'" do
      let(:braces) { braces }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "(){}[]", true
  include_examples "result", "([{}])", true
  include_examples "result", "(}", false
  include_examples "result", "[(])", false
  include_examples "result", "[({})](]", false
  include_examples "result", "()", true
  include_examples "result", "[]", true
  include_examples "result", "{}", true
  include_examples "result", "(){}[]", true
  include_examples "result", "([{}])", true
  include_examples "result", "(}", false
  include_examples "result", "[(])", false
  include_examples "result", "({})[({})]", true
  include_examples "result", "(})", false
  include_examples "result", "(({{[[]]}}))", true
  include_examples "result", "{}({})[]", true
  include_examples "result", ")(}{][", false
  include_examples "result", "())({}}{()][][", false
  include_examples "result", "(((({{", false
  include_examples "result", "}}]]))}])", false
end
