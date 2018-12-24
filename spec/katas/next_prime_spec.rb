require './katas/next_prime/lib/next_prime'

RSpec.describe "#next_prime" do
  subject { next_prime(n) }

  shared_examples "result" do |n, expected_result|

    context "when n = '#{n}'" do
      let(:n) { n }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", 0, 2
  include_examples "result", 2, 3
  include_examples "result", 3, 5
  include_examples "result", 13, 17
  include_examples "result", 181, 191
  include_examples "result", 911, 919
  include_examples "result", 1, 2
  include_examples "result", 4, 5
  include_examples "result", 3, 5
  include_examples "result", 1, 2
  include_examples "result", 5, 7
  include_examples "result", 7, 11
  include_examples "result", 3, 5
  include_examples "result", 12, 13
  include_examples "result", 14, 17
  include_examples "result", 11, 13
  include_examples "result", 17, 19
  include_examples "result", 29, 31
  include_examples "result", 10, 11
  include_examples "result", 24, 29
  include_examples "result", 40, 41
  include_examples "result", 53, 59
  include_examples "result", 50, 53
  include_examples "result", 6, 7
  include_examples "result", 8, 11
  include_examples "result", 36, 37
  include_examples "result", 76, 79
  include_examples "result", 7, 11
  include_examples "result", 24, 29
  include_examples "result", 98, 101
  include_examples "result", 153, 157
  include_examples "result", 123, 127
  include_examples "result", 130, 131
  include_examples "result", 39, 41
  include_examples "result", 68, 71
  include_examples "result", 487, 491
  include_examples "result", 138, 139
  include_examples "result", 323, 331
  include_examples "result", 231, 233
  include_examples "result", 832, 839
  include_examples "result", 308, 311
  include_examples "result", 505, 509
  include_examples "result", 929, 937
  include_examples "result", 941, 947
  include_examples "result", 1545, 1549
  include_examples "result", 1778, 1783
  include_examples "result", 154, 157
  include_examples "result", 300, 307
  include_examples "result", 1586, 1597
  include_examples "result", 3805, 3821
  include_examples "result", 1008, 1009
  include_examples "result", 2969, 2971
  include_examples "result", 1775, 1777
  include_examples "result", 3437, 3449
  include_examples "result", 3082, 3083
  include_examples "result", 1722, 1723
  include_examples "result", 206, 211
  include_examples "result", 3703, 3709
  include_examples "result", 3187, 3191
  include_examples "result", 14605, 14621
  include_examples "result", 11310, 11311
  include_examples "result", 6722, 6733
  include_examples "result", 5139, 5147
  include_examples "result", 10925, 10937
  include_examples "result", 11030, 11047
  include_examples "result", 4199, 4201
  include_examples "result", 23935, 23957
  include_examples "result", 9376, 9377
  include_examples "result", 22225, 22229
  include_examples "result", 39972, 39979
  include_examples "result", 21279, 21283
  include_examples "result", 14669, 14683
  include_examples "result", 16711, 16729
  include_examples "result", 53380, 53381
  include_examples "result", 115163, 115183
  include_examples "result", 34077, 34123
  include_examples "result", 103621, 103643
  include_examples "result", 59735, 59743
  include_examples "result", 98363, 98369
  include_examples "result", 74403, 74411
  include_examples "result", 169246, 169249
  include_examples "result", 164007, 164011
  include_examples "result", 180178, 180179
  include_examples "result", 166287, 166289
  include_examples "result", 377312, 377327
  include_examples "result", 307456, 307471
  include_examples "result", 367910, 367949
  include_examples "result", 512218, 512249
  include_examples "result", 279531, 279541
  include_examples "result", 733606, 733619
  include_examples "result", 907000, 907019
end
