require './lib/kata_generator'
require './spec/mocks/generator_mock_logger'
require './spec/mocks/mock_spec_template_generator'

RSpec.describe KataGenerator do
  let(:logger) { GeneratorMockLogger.new }
  let(:spec_file_template_generator) { MockSpecTemplateGenerator.new }
  let(:kata_name) { "test_kata" }

  shared_examples "directories and files existence check" do |expected_result|
    example_description = expected_result ? "creates" : "does not create"

    it "#{example_description} root directory for kata as specified kata name" do
      expect(Dir.exist?("katas/#{kata_name}")).to be expected_result
    end

    it "#{example_description} README.md file for kata inside root directory" do
      expect(File.exist?("katas/#{kata_name}/README.md")).to be expected_result
    end

    it "#{example_description} lib directory inside kata root directory" do
      expect(Dir.exist?("katas/#{kata_name}/lib")).to be expected_result
    end

    it "#{example_description} kata definition file inside lib directory of root directory" do
      expect(File.exist?("katas/#{kata_name}/lib/#{kata_name}.rb")).to be expected_result
    end

    it "#{example_description} spec file for kata inside katas spec directory" do
      expect(File.exist?("spec/katas/#{kata_name}_spec.rb")).to be expected_result
    end
  end

  describe "#call" do

    after do
      if Dir.exists?("katas/#{kata_name}")
        FileUtils.rm_rf("katas/#{kata_name}")
      end

      if File.exist?("spec/katas/#{kata_name}_spec.rb")
        File.delete("spec/katas/#{kata_name}_spec.rb")
      end
    end

    context "when no error occurred" do

      before do
        described_class.call(kata_name, spec_file_template_generator, logger)
      end

      include_examples "directories and files existence check", true
    end

    context "when error occurred" do
      let(:method_arguments) { nil }

      it "calls 'clean_up' method" do
        expect_any_instance_of(described_class).to receive(:clean_up)
        described_class.call(kata_name, spec_file_template_generator, logger, method_arguments)
      end

      include_examples "directories and files existence check", false
    end
  end
end
