class KataSpecFileTemplateGenerator

  def initialize(kata_name, method_arguments = [])
    @kata_name = kata_name
    @method_arguments = method_arguments
  end

  def self.call(kata_name, method_arguments = [])
    new(kata_name, method_arguments).call
  end

  def call
    spec_file = <<EOF
require './katas/#{kata_name}/lib/#{kata_name}'

RSpec.describe "##{kata_name}" do
  subject { #{kata_name}#{arguments_for_subject} }

  shared_examples "result" do |#{arguments_for_shared_examples}, expected_result|

    context "when #{context_description}" do
      #{lets_for_context}

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end
  #TODO - include your examples/test cases like below...
  include_examples "result", #{arguments_for_shared_examples}, expected_result_value
end
EOF
  end

  private

  attr_reader :kata_name, :method_arguments

  def arguments_for_subject
    @arguments ||= method_arguments.empty? ? '' : '(' + method_arguments.join(', ') + ')'
  end

  def arguments_for_shared_examples
    @arguments_shared_examples ||= method_arguments.empty? ? '' : method_arguments.join(', ')
  end

  def lets_for_context
    @lets ||= method_arguments.map { |arg| "let(:#{arg}) { #{arg} }" }.join("\n      ")
  end

  def context_description
    @context_description ||= method_arguments.map { |arg| "#{arg} = " + "#" + "{arg}" }.join(', ')
  end

  def expected_result
    @expected_result ||= "#" + "{expected_result}"
  end
end
