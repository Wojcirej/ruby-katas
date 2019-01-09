TEAMS = "Los Angeles Clippers,Dallas Mavericks,New York Knicks,Atlanta Hawks,Indiana Pacers,Memphis Grizzlies,"\
         "Los Angeles Lakers,Minnesota Timberwolves,Phoenix Suns,Portland Trail Blazers,New Orleans Pelicans,"\
         "Sacramento Kings,Los Angeles Clippers,Houston Rockets,Denver Nuggets,Cleveland Cavaliers,Milwaukee Bucks,"\
         "Oklahoma City Thunder, San Antonio Spurs,Boston Celtics,Philadelphia 76ers,Brooklyn Nets,Chicago Bulls,"\
         "Detroit Pistons,Utah Jazz,Miami Heat,Charlotte Hornets,Toronto Raptors,Orlando Magic,Washington Wizards,"\
         "Golden State Warriors".split(',').map { |team| team.strip }
def nba(result_sheet, team)
  return "" if team.eql?("")
  return "#{team}:This team didn't play!" if !TEAMS.include?(team)
  scored = 0
  conceded = 0
  points = 0
  wins = 0
  draws = 0
  loses = 0
  matches = result_sheet.split(',')
  team_matches = matches.select { |match| match.match(team) }
  team_matches.each do |result|
    @result = result
    fail ArgumentError unless float_score?.empty?
    side = team == home_team ? :home : :away
    opponent = side == :home ? :away : :home
    scored += send("#{side}_score")
    conceded += send("#{opponent}_score")
    if send("#{side}_score") > send("#{opponent}_score")
      wins += 1
      points += 3
    elsif send("#{side}_score") < send("#{opponent}_score")
      loses += 1
    else
      draws += 1
      points += 1
    end
  end
  "#{team}:W=#{wins};D=#{draws};L=#{loses};Scored=#{scored};Conceded=#{conceded};Points=#{points}"
rescue => e
  "Error(float number):#{@result}"
end

def float_score?
  @result.scan(/(\d+[.]\d+)/).flatten
end

def home_team
  @result.split(/\d/).reject { |x| x.empty? }.map { |x| x.strip }.first
end

def home_score
  @result.split(/\D/).reject { |x| x.empty? }.first.to_i
end

def away_team
  @result.split(/\d/).reject { |x| x.empty? }.map { |x| x.strip }.last
end

def away_score
  @result.split(/\D/).reject { |x| x.empty? }.last.to_i
end
