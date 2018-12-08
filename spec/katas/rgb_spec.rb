require './katas/rgb_to_hex_conversion/lib/rgb'

RSpec.describe "#rgb" do
  subject { rgb(red, green, blue) }
  let(:red) { 255 }
  let(:green) { 255 }
  let(:blue) { 255 }

  it "returns hexadecimal value" do
    expect(rgb(148, 0, 211)).to eq("9400D3")
  end

  it "returns hexadecimal value in six characters" do
    expect(rgb(0, 0, 0).size).to eq(6)
  end

  context "when any of arguments > 255" do

    it "rounds argument value to 255 and return hexadecimal value" do
      aggregate_failures "argument values higher than 255" do
        expect(rgb(255, 255, 300)).to eq("FFFFFF")
        expect(rgb(255, 300, 255)).to eq("FFFFFF")
        expect(rgb(300, 255, 255)).to eq("FFFFFF")
      end
    end
  end

  context "when any of arguments < 0" do

    it "sets argument value to 0 and returns hexadecimal value" do
      aggregate_failures "argument values higher than 255" do
        expect(rgb(-20, 0, 0)).to eq("000000")
        expect(rgb(0, -20, 0)).to eq("000000")
        expect(rgb(0, 0, -20)).to eq("000000")
      end
    end
  end
end
