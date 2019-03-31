require './katas/storing_codes/lib/storing_codes'

RSpec.describe Code do
  subject { described_class }

  context "when no code stored under called name" do

    it "raises error" do
      expect { Code.blue }.to raise_error(NoMethodError)
    end
  end

  context "when new code is trying to be stored" do

    it "does not raise error" do
      expect { Code.green = '00FF00' }.not_to raise_error
    end

    it "defines 'getter' singleton method" do
      Code.green = '00FF00'
      expect(Code.respond_to?(:green)).to be true
    end

    it "defines 'setter' singleton method" do
      Code.green = '00FF00'
      expect(Code.respond_to?(:green=)).to be true
    end
  end

  context "when method with known code is called" do

    it "does not raise error" do
      Code.green = '00FF00'
      expect { Code.green }.not_to raise_error
    end

    it "returns known code" do
      Code.green = '00FF00'
      expect(Code.green).to eq('00FF00')
    end
  end
end
