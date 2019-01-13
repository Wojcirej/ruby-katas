require './katas/best_travel/lib/best_travel'

RSpec.describe "#best_travel" do
  subject { best_travel(t, k, ls) }

  shared_examples "result" do |t, k, ls, expected_result|

    context "when t = '#{t}', k = '#{k}', ls = '#{ls}'" do
      let(:t) { t }
      let(:k) { k }
      let(:ls) { ls }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", 163, 3, [50, 55, 56, 57, 58], 163
  include_examples "result", 163, 3, [50], nil
  include_examples "result", 230, 3, [91, 74, 73, 85, 73, 81, 87], 228
  include_examples "result", 331, 2, [91, 74, 73, 85, 73, 81, 87], 178
  include_examples "result", 331, 4, [91, 74, 73, 85, 73, 81, 87], 331
  include_examples "result", 331, 5, [91, 74, 73, 85, 73, 81, 87], nil
  include_examples "result", 331, 1, [91, 74, 73, 85, 73, 81, 87], 91
  include_examples "result", 700, 6, [91, 74, 73, 85, 73, 81, 87], 491
  include_examples "result", 230, 4, [100, 76, 56, 44, 89, 73, 68, 56, 64, 123, 2333, 144, 50, 132, 123, 34, 89], 230
  include_examples "result", 430, 5, [100, 76, 56, 44, 89, 73, 68, 56, 64, 123, 2333, 144, 50, 132, 123, 34, 89], 430
  include_examples "result", 430, 8, [100, 76, 56, 44, 89, 73, 68, 56, 64, 123, 2333, 144, 50, 132, 123, 34, 89], nil
  include_examples "result", 880, 8, [100, 76, 56, 44, 89, 73, 68, 56, 64, 123, 2333, 144, 50, 132, 123, 34, 89], 876
  include_examples "result", 2430, 15, [100, 76, 56, 44, 89, 73, 68, 56, 64, 123, 2333, 144, 50, 132, 123, 34, 89], 1287
  include_examples "result", 100, 2, [100, 76, 56, 44, 89, 73, 68, 56, 64, 123, 2333, 144, 50, 132, 123, 34, 89], 100
  include_examples "result", 276, 3, [100, 76, 56, 44, 89, 73, 68, 56, 64, 123, 2333, 144, 50, 132, 123, 34, 89], 276
  include_examples "result", 3760, 17, [100, 76, 56, 44, 89, 73, 68, 56, 64, 123, 2333, 144, 50, 132, 123, 34, 89], 3654
  include_examples "result", 3760, 40, [100, 76, 56, 44, 89, 73, 68, 56, 64, 123, 2333, 144, 50, 132, 123, 34, 89], nil
  include_examples "result", 50, 1, [100, 76, 56, 44, 89, 73, 68, 56, 64, 123, 2333, 144, 50, 132, 123, 34, 89], 50
  include_examples "result", 1000, 18, [100, 76, 56, 44, 89, 73, 68, 56, 64, 123, 2333, 144, 50, 132, 123, 34, 89], nil
  include_examples "result", 230, 4, [100, 64, 123, 2333, 144, 50, 132, 123, 34, 89], nil
  include_examples "result", 230, 2, [100, 64, 123, 2333, 144, 50, 132, 123, 34, 89], 223
  include_examples "result", 2333, 1, [100, 64, 123, 2333, 144, 50, 132, 123, 34, 89], 2333
  include_examples "result", 2333, 8, [100, 64, 123, 2333, 144, 50, 132, 123, 34, 89], 825
  include_examples "result", 2300, 4, [1000, 640, 1230, 2333, 1440, 500, 1320, 1230, 340, 890, 732, 1346], 2212
  include_examples "result", 2300, 5, [1000, 640, 1230, 2333, 1440, 500, 1320, 1230, 340, 890, 732, 1346], nil
  include_examples "result", 2332, 3, [1000, 640, 1230, 2333, 1440, 500, 1320, 1230, 340, 890, 732, 1346], 2326
  include_examples "result", 23331, 8, [1000, 640, 1230, 2333, 1440, 500, 1320, 1230, 340, 890, 732, 1346], 10789
  include_examples "result", 331, 2, [1000, 640, 1230, 2333, 1440, 500, 1320, 1230, 340, 890, 732, 1346], nil
end
