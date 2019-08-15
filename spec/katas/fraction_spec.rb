require "./katas/fraction/lib/fraction"

RSpec.describe Fraction do
  subject { Fraction.new(numerator, denominator) }

  describe "#initialize" do
    context "when denominator is 0" do
      it "raises IllegalDenominator exception" do
        expect { Fraction.new(2, 0) }.to raise_error(Fraction::IllegalDenominator)
      end
    end

    context "when denominator is not 0" do
      it "creates new Fraction object without errors" do
        expect { Fraction.new(2, 1) }.not_to raise_error
      end

      it "creates new Fraction object with cancelled down numerator and denominator" do
        fraction = Fraction.new(8, 16)
        expect(fraction.numerator).to eq(1)
        expect(fraction.denominator).to eq(2)
      end
    end
  end

  describe "#+" do
    example "1/2 + 3/4 = 10/8" do
      expect(Fraction.new(1, 2) + Fraction.new(3, 4)).to eq(Fraction.new(10, 8))
    end
  end

  describe "#-" do
    example "3/4 - 1/2 = 2/8" do
      expect(Fraction.new(3, 4) - Fraction.new(1, 2)).to eq(Fraction.new(2, 8))
    end
  end

  describe "#*" do
    example "3/4 * 1/2 = 3/8" do
      expect(Fraction.new(3, 4) * Fraction.new(1, 2)).to eq(Fraction.new(3, 8))
    end
  end

  describe "#/" do
    context "when numerator of the second fraction is zero" do
      it "raises 'DivisionByZero' exception" do
        expect { Fraction.new(3, 4) / Fraction.new(0, 4) }.to raise_error(Fraction::DivisionByZero)
      end
    end

    context "when numerator of the second fraction not zero" do
      example "(3/4) / (1/2) = 6/4" do
        expect(Fraction.new(3, 4) / Fraction.new(1, 2)).to eq(Fraction.new(6, 4))
      end
    end
  end

  describe "#reverse" do
    it "returns new Fraction object with reversed numerator and denominator" do
      expect(Fraction.new(1, 2).reverse).to eq(Fraction.new(2, 1))
      expect(Fraction.new(5, 8).reverse).to eq(Fraction.new(8, 5))
    end
  end

  describe "#reverse!" do
    it "modifies self by reversing numerator and denominator" do
      fraction = Fraction.new(1, 2)
      fraction.reverse!
      expect(fraction).to eq(Fraction.new(2, 1))
    end
  end

  describe "#to_s" do
    context "when either numerator or denominator negative" do
      example "numerator = 5, denominator = -10 -> -1/2" do
        expect(Fraction.new(5, -10).to_s).to eq("-1/2")
      end

      example "numerator = -6, denominator = 18 -> -1/3" do
        expect(Fraction.new(-6, 18).to_s).to eq("-1/3")
      end

      example "numerator = -8, denominator = -24 -> 1/3" do
        expect(Fraction.new(-8, -24).to_s).to eq("1/3")
      end
    end

    context "when numerator < denominator" do
      it "returns fraction in format 'numerator/denominator'" do
        expect(Fraction.new(1, 2).to_s).to eq("1/2")
      end
    end

    context "when numerator = denominator" do
      it "returns 1" do
        expect(Fraction.new(4, 4).to_s).to eq("1")
        expect(Fraction.new(5, 5).to_s).to eq("1")
      end
    end

    context "when numerator > denominator" do
      example "28/20 = 1 2/5" do
        expect(Fraction.new(28, 20).to_s).to eq("1 2/5")
      end

      example "10/4 = 2 1/2" do
        expect(Fraction.new(10, 4).to_s).to eq("2 1/2")
      end
    end
  end

  describe "#to_f" do
    example "1/2 = 0.5" do
      expect(Fraction.new(1, 2).to_f).to eq(0.5)
    end

    example "3/4 = 0.75" do
      expect(Fraction.new(3, 4).to_f).to eq(0.75)
    end

    example "6/4 = 1.5" do
      expect(Fraction.new(6, 4).to_f).to eq(1.5)
    end

    example "-8/14 = -0.57142857142" do
      expect(Fraction.new(-8, 14).to_f).to eq(-0.5714285714285714)
    end

    example "25/-125 = -0.2" do
      expect(Fraction.new(25, -125).to_f).to eq(-0.2)
    end
  end
end
