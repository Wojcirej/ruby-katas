require './lib/kata_spec_file_template_generator'
require 'pry'

def method_arguments
  ["arg1", "arg2"]
end

RSpec.describe KataSpecFileTemplateGenerator do
  subject { described_class.new(kata_name, method_arguments) }
  let(:kata_name) { "test_kata" }

  shared_examples "method returning empty string" do |method_name|

    context "when no method arguments" do
      let(:method_arguments) { [] }

      it "returns empty string" do
        expect(subject.send(method_name)).to eq('')
      end
    end
  end

  describe "#arguments_for_subject" do

    it_behaves_like "method returning empty string", :arguments_for_subject

    context "when there are method arguments" do

      it "returns arguments separated by comma in parentheses" do
        expect(subject.arguments_for_subject).to eq("(arg1, arg2)")
      end
    end
  end

  describe "#arguments_for_shared_examples" do

    it_behaves_like "method returning empty string", :arguments_for_shared_examples

    context "when there are method arguments" do

      it "returns arguments separated by comma without parentheses" do
        expect(subject.arguments_for_shared_examples).to eq("arg1, arg2")
      end
    end
  end

  describe "#lets_for_context" do

    it_behaves_like "method returning empty string", :lets_for_context

    context "when there are method arguments" do

      it "returns declaration of lets for each argument" do
        expect(subject.lets_for_context).to eq("let(:arg1) { arg1 }\n      let(:arg2) { arg2 }")
      end

      context "when more than one method argument" do
        let(:method_arguments) { ["arg1", "arg2", "arg3"] }

        it "returns first let without any indent" do
          result = subject.lets_for_context.split("\n")
          expect(result.first).to eq("let(:arg1) { arg1 }")
        end

        it "returns second and any next let with 6 spaces indent" do
          result = subject.lets_for_context.split("\n")
          expect(result[1]).to eq("      let(:arg2) { arg2 }")
          expect(result.last).to eq("      let(:arg3) { arg3 }")
        end
      end
    end
  end

  describe "#context_description" do

    it_behaves_like "method returning empty string", :context_description

    context "when there are method arguments" do

      it "returns comma separated arguments, with syntax including its values" do
        expect(subject.context_description).to eq("arg1 = '\#{arg}', arg2 = '\#{arg}'")
      end
    end
  end

  describe "#expected_result" do

    it "returns syntax including value of 'expected_result' argument" do
      expect(subject.expected_result).to eq("\#{expected_result}")
    end
  end
end
