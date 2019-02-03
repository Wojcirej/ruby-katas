require './katas/total_amount_of_points/lib/total_amount_of_points'

RSpec.describe "#total_amount_of_points" do
  subject { total_amount_of_points(games) }

  shared_examples "result" do |games, expected_result|

    context "when games = '#{games}'" do
      let(:games) { games }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", ['1:0','2:0','3:0','4:0','2:1','3:1','4:1','3:2','4:2','4:3'], 30
  include_examples "result", ['1:1','2:2','3:3','4:4','2:2','3:3','4:4','3:3','4:4','4:4'], 10
  include_examples "result", ['0:1','0:2','0:3','0:4','1:2','1:3','1:4','2:3','2:4','3:4'], 0
  include_examples "result", ['1:0','2:0','3:0','4:0','2:1','1:3','1:4','2:3','2:4','3:4'], 15
  include_examples "result", ['1:0','2:0','3:0','4:4','2:2','3:3','1:4','2:3','2:4','3:4'], 12
  include_examples "result", ['0:3', '2:0', '4:3', '2:4', '4:3', '0:2', '2:2', '3:0', '0:1', '3:2'], 16
  include_examples "result", ['2:2', '1:0', '0:2', '3:4', '0:3', '1:2', '2:4', '3:0', '4:0', '1:4'], 10
  include_examples "result", ['1:3', '4:1', '0:4', '4:4', '1:0', '1:0', '0:2', '1:3', '4:4', '2:1'], 14
  include_examples "result", ['1:1', '0:3', '4:4', '1:3', '4:4', '3:2', '3:4', '1:4', '1:2', '2:3'], 6
  include_examples "result", ['0:2', '3:1', '0:4', '1:2', '3:1', '4:2', '0:2', '4:4', '1:0', '2:4'], 13
  include_examples "result", ['0:3', '0:3', '3:2', '1:2', '0:1', '3:1', '3:1', '3:0', '1:0', '2:1'], 18
  include_examples "result", ['0:3', '4:3', '0:3', '0:4', '1:1', '1:3', '0:1', '0:2', '3:0', '3:4'], 7
  include_examples "result", ['3:4', '2:3', '0:2', '4:4', '1:2', '3:2', '4:0', '3:1', '4:1', '3:4'], 13
  include_examples "result", ['4:4', '2:3', '0:1', '0:1', '2:2', '3:2', '3:1', '1:0', '3:2', '0:2'], 14
  include_examples "result", ['4:3', '4:4', '3:4', '2:0', '1:1', '1:4', '0:3', '1:4', '1:3', '2:1'], 11
  include_examples "result", ['1:3', '3:1', '3:0', '1:4', '0:1', '0:3', '1:4', '0:2', '4:2', '0:2'], 9
  include_examples "result", ['4:3', '3:3', '4:3', '4:1', '2:0', '4:0', '1:1', '2:0', '3:2', '3:3'], 24
  include_examples "result", ['4:4', '0:3', '3:2', '0:4', '4:4', '4:3', '2:3', '2:3', '1:1', '0:0'], 10
  include_examples "result", ['4:2', '0:0', '4:0', '3:4', '4:0', '1:1', '3:1', '0:4', '3:4', '2:2'], 15
  include_examples "result", ['4:0', '4:2', '1:2', '0:1', '1:1', '1:4', '2:1', '4:1', '0:1', '4:4'], 14
  include_examples "result", ['4:4', '0:1', '4:3', '1:1', '1:2', '1:4', '2:0', '1:3', '1:3', '2:1'], 11
  include_examples "result", ['0:0', '0:4', '4:3', '4:0', '2:4', '1:4', '3:3', '2:0', '2:3', '1:2'], 11
  include_examples "result", ['1:2', '2:1', '4:0', '0:1', '3:1', '4:0', '1:0', '3:2', '1:3', '1:3'], 18
  include_examples "result", ['1:1', '1:1', '2:4', '1:2', '3:4', '1:4', '3:2', '1:3', '0:4', '3:3'], 6
  include_examples "result", ['1:4', '1:4', '0:2', '3:0', '2:0', '4:0', '1:3', '2:1', '3:1', '4:0'], 18
  include_examples "result", ['3:0', '4:2', '3:4', '3:2', '1:2', '2:0', '1:2', '3:4', '1:0', '2:0'], 18
  include_examples "result", ['2:1', '1:4', '2:2', '2:1', '1:1', '1:0', '2:0', '3:1', '2:2', '2:4'], 18
  include_examples "result", ['2:3', '3:1', '2:3', '1:0', '1:4', '3:4', '3:4', '0:0', '3:4', '1:4'], 7
  include_examples "result", ['2:1', '3:0', '1:0', '3:4', '1:2', '3:4', '1:1', '2:1', '3:1', '3:1'], 19
  include_examples "result", ['0:0', '2:1', '0:4', '3:2', '2:1', '4:1', '4:2', '2:2', '0:0', '3:1'], 21
  include_examples "result", ['3:3', '0:1', '2:3', '4:3', '4:4', '1:0', '1:3', '1:1', '2:3', '3:4'], 9
  include_examples "result", ['2:0', '0:3', '4:1', '3:1', '2:2', '3:0', '4:2', '3:0', '1:0', '2:2'], 23
  include_examples "result", ['3:2', '3:0', '4:1', '4:1', '3:1', '4:4', '0:1', '0:2', '2:0', '1:0'], 22
  include_examples "result", ['0:1', '2:1', '1:1', '3:0', '3:3', '1:4', '4:4', '2:1', '3:1', '1:4'], 15
  include_examples "result", ['4:2', '4:3', '0:3', '2:4', '2:0', '3:2', '0:2', '3:2', '3:1', '0:1'], 18
  include_examples "result", ['2:3', '4:1', '1:3', '3:3', '4:2', '0:2', '2:2', '3:2', '4:2', '2:1'], 17
  include_examples "result", ['3:1', '0:2', '0:1', '0:0', '2:3', '1:2', '3:4', '2:3', '0:3', '0:4'], 4
  include_examples "result", ['0:3', '0:3', '3:4', '0:2', '0:4', '3:2', '0:0', '1:1', '4:1', '0:1'], 8
  include_examples "result", ['3:3', '0:4', '1:2', '2:2', '3:1', '4:3', '0:3', '2:4', '0:2', '4:4'], 9
  include_examples "result", ['2:1', '1:1', '1:3', '0:0', '2:4', '0:0', '1:0', '2:4', '2:3', '3:4'], 9
  include_examples "result", ['2:2', '4:2', '1:4', '1:2', '3:1', '0:4', '0:0', '1:4', '2:4', '0:0'], 9
  include_examples "result", ['3:4', '0:2', '4:0', '3:0', '1:2', '2:1', '2:3', '0:1', '1:4', '4:1'], 12
  include_examples "result", ['3:2', '3:1', '4:0', '1:1', '3:2', '4:0', '2:3', '3:2', '2:4', '1:4'], 19
  include_examples "result", ['2:3', '3:0', '2:3', '2:0', '3:4', '0:4', '0:0', '2:0', '1:3', '3:1'], 13
  include_examples "result", ['1:3', '1:4', '0:1', '0:1', '0:0', '1:2', '4:1', '2:4', '4:4', '4:1'], 8
  include_examples "result", ['1:2', '0:3', '0:2', '0:4', '3:0', '1:2', '0:3', '3:3', '4:4', '3:0'], 8
  include_examples "result", ['0:1', '3:1', '1:0', '1:1', '1:1', '4:2', '4:2', '2:4', '3:0', '0:0'], 18
  include_examples "result", ['2:4', '0:4', '4:2', '2:3', '1:2', '3:2', '1:3', '2:3', '1:3', '2:4'], 6
  include_examples "result", ['2:3', '0:0', '0:4', '0:4', '2:2', '0:1', '4:4', '4:4', '2:4', '4:0'], 7
  include_examples "result", ['4:4', '2:2', '1:0', '2:2', '1:0', '3:0', '2:3', '2:1', '1:1', '2:3'], 16
  include_examples "result", ['2:2', '3:3', '3:2', '2:4', '0:2', '0:0', '2:2', '0:1', '0:0', '2:0'], 11
  include_examples "result", ['4:1', '1:0', '2:1', '3:2', '3:4', '0:4', '0:0', '2:4', '2:4', '3:0'], 16
  include_examples "result", ['1:0', '3:0', '3:1', '4:2', '4:0', '4:2', '2:0', '4:3', '4:4', '4:4'], 26
  include_examples "result", ['1:2', '4:2', '3:3', '4:1', '4:3', '4:2', '2:2', '1:3', '0:0', '0:1'], 15
  include_examples "result", ['3:0', '3:0', '2:0', '2:4', '4:0', '2:1', '4:2', '1:1', '4:0', '1:2'], 22
end
