require './katas/nba/lib/nba'

def result_sheet
  "Los Angeles Clippers 104 Dallas Mavericks 88,New York Knicks 101 Atlanta Hawks 112,Indiana Pacers 103 Memphis Grizzlies 112,"\
  "Los Angeles Lakers 111 Minnesota Timberwolves 112,Phoenix Suns 95 Dallas Mavericks 111,Portland Trail Blazers 112 New Orleans Pelicans 94,"\
  "Sacramento Kings 104 Los Angeles Clippers 111,Houston Rockets 85 Denver Nuggets 105,Memphis Grizzlies 76 Cleveland Cavaliers 106,"\
  "Milwaukee Bucks 97 New York Knicks 122,Oklahoma City Thunder 112 San Antonio Spurs 106,Boston Celtics 112 Philadelphia 76ers 95,"\
  "Brooklyn Nets 100 Chicago Bulls 115,Detroit Pistons 92 Utah Jazz 87,Miami Heat 104 Charlotte Hornets 94,"\
  "Toronto Raptors 106 Indiana Pacers 99,Orlando Magic 87 Washington Wizards 88,Golden State Warriors 111 New Orleans Pelicans 95,"\
  "Atlanta Hawks 94 Detroit Pistons 106,Chicago Bulls 97 Cleveland Cavaliers 95,"\
  "San Antonio Spurs 111 Houston Rockets 86,Chicago Bulls 103 Dallas Mavericks 102,Minnesota Timberwolves 112 Milwaukee Bucks 108,"\
  "New Orleans Pelicans 93 Miami Heat 90,Boston Celtics 81 Philadelphia 76ers 65,Detroit Pistons 115 Atlanta Hawks 87,"\
  "Toronto Raptors 92 Washington Wizards 82,Orlando Magic 86 Memphis Grizzlies 76,Los Angeles Clippers 115 Portland Trail Blazers 109,"\
  "Los Angeles Lakers 97 Golden State Warriors 136,Utah Jazz 98 Denver Nuggets 78,Boston Celtics 99 New York Knicks 85,"\
  "Indiana Pacers 98 Charlotte Hornets 86,Dallas Mavericks 87 Phoenix Suns 99,Atlanta Hawks 81 Memphis Grizzlies 82,"\
  "Miami Heat 110 Washington Wizards 105,Detroit Pistons 94 Charlotte Hornets 99,Orlando Magic 110 New Orleans Pelicans 107,"\
  "Los Angeles Clippers 130 Golden State Warriors 95,Utah Jazz 102 Oklahoma City Thunder 113,San Antonio Spurs 84 Phoenix Suns 104,"\
  "Chicago Bulls 103 Indiana Pacers 94,Milwaukee Bucks 106 Minnesota Timberwolves 88,Los Angeles Lakers 104 Portland Trail Blazers 102,"\
  "Houston Rockets 120 New Orleans Pelicans 100,Boston Celtics 111 Brooklyn Nets 105,Charlotte Hornets 94 Chicago Bulls 86,"\
  "Cleveland Cavaliers 103 Dallas Mavericks 97"
end

RSpec.describe "#nba" do
  subject { nba(result_sheet, team) }

  shared_examples "result" do |team, expected_result|

    context "when team = '#{team}'" do
      let(:team) { team }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "Boston Celtics", "Boston Celtics:W=4;D=0;L=0;Scored=403;Conceded=350;Points=12"
  include_examples "result", "Charlotte Hornets", "Charlotte Hornets:W=2;D=0;L=2;Scored=373;Conceded=382;Points=6"
  include_examples "result", "Boston Celt", "Boston Celt:This team didn't play!"
  include_examples "result", "Los Angeles Lakers", "Los Angeles Lakers:W=1;D=0;L=2;Scored=312;Conceded=350;Points=3"
  include_examples "result", "Golden State Warriors", "Golden State Warriors:W=2;D=0;L=1;Scored=342;Conceded=322;Points=6"
  include_examples "result", "Milwaukee Bucks", "Milwaukee Bucks:W=1;D=0;L=2;Scored=311;Conceded=322;Points=3"
  include_examples "result", "Washington Wizards", "Washington Wizards:W=1;D=0;L=2;Scored=275;Conceded=289;Points=3"
  include_examples "result", "San Antonio Spurs", "San Antonio Spurs:W=1;D=0;L=2;Scored=301;Conceded=302;Points=3"
  include_examples "result", "New Orleans Pelicans", "New Orleans Pelicans:W=1;D=0;L=4;Scored=489;Conceded=543;Points=3"
  include_examples "result", "Indiana Pacers", "Indiana Pacers:W=1;D=0;L=3;Scored=394;Conceded=407;Points=3"
  include_examples "result", "Philadelphia 76ers", "Philadelphia 76ers:W=0;D=0;L=2;Scored=160;Conceded=193;Points=0"
  include_examples "result", "", ""
  include_examples "result", "Oklahoma City Thunder", "Oklahoma City Thunder:W=2;D=0;L=0;Scored=225;Conceded=208;Points=6"
  include_examples "result", "Phoenix Suns", "Phoenix Suns:W=2;D=0;L=1;Scored=298;Conceded=282;Points=6"
  include_examples "result", "NYK", "NYK:This team didn't play!"

  context "when one of the scores is not integer" do
    let(:result_sheet) { "New York Knicks 101.12 Atlanta Hawks 112" }

    include_examples "result", "Atlanta Hawks", "Error(float number):New York Knicks 101.12 Atlanta Hawks 112"
  end
end
