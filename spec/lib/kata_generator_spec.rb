require './lib/kata_generator'
require './lib/generator_logger'

class MockLogger

  def log_directory_creation(path)
  end

  def log_file_generation(path)
  end
end

RSpec.describe KataGenerator do
  let(:logger) { MockLogger.new }
  let(:kata_name) { "test_kata" }

  describe "#call" do

    before do
      described_class.call(kata_name, logger)
    end

    after do
      if Dir.exists?("katas/#{kata_name}")
        FileUtils.rm_rf("katas/#{kata_name}")
      end

      if File.exist?("spec/katas/#{kata_name}_spec.rb")
        File.delete("spec/katas/#{kata_name}_spec.rb")
      end
    end

    it "creates root directory for kata as specified kata name" do
      expect(Dir.exist?("katas/#{kata_name}")).to be true
    end

    it "generates README.md file for kata inside root directory" do
      expect(File.exist?("katas/#{kata_name}/README.md")).to be true
    end

    it "creates lib directory inside kata root directory" do
      expect(Dir.exist?("katas/#{kata_name}/lib")).to be true
    end

    it "generates kata definition file inside lib directory of root directory" do
      expect(File.exist?("katas/#{kata_name}/lib/#{kata_name}.rb")).to be true
    end

    it "generates spec file for kata inside katas spec directory" do
      expect(File.exist?("spec/katas/#{kata_name}_spec.rb")).to be true
    end
  end
end
