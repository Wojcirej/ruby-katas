# NBA

### Description
You are given a string with results of NBA teams (see the data in "Sample Tests") separated by commas e.g:
```r = Los Angeles Clippers 104 Dallas Mavericks 88,New York Knicks 101 Atlanta Hawks 112,Indiana Pacers 103 Memphis Grizzlies 112, Los Angeles Clippers 100 Boston Celtics 120.```
A team name is composed of one, two or more words built with letters or digits: ```Atlanta Hawks, Philadelphia 76ers```...

Given a string of results and the name of a team (parameter :`team`) your function `nba` will return as a string:
* the name of the team followed by `:` and
* the number of matches won by the team
* the number of draws
* the number of matches lost by the team
* the total number of points scored by the team
* the total number of points conceded by the team

And finally a kind of marks in our ranking system:
* a team marks 3 if it is a win
* a team marks 1 if it is a draw
* a team marks 0 if it is a loss.

If a team name can't be found in the given string of results you will return `"Team Name:This team didn't play!"` (See examples below).

The scores must be integers. If a score is a float number (abc.xyz...) you will return: `"Error(float number):the concerned string"`

### Examples
```ruby
nba(r, "Los Angeles Clippers") # => "Los Angeles Clippers:W=1;D=0;L=1;Scored=204;Conceded=208;Points=3"
nba(r, "Boston Celtics") # => "Boston Celtics:W=1;D=0;L=0;Scored=120;Conceded=100;Points=3"
nba(r, "") # => ""
nba(r, "Boston Celt") # => "Boston Celt:This team didn't play!"

r0="New York Knicks 101.12 Atlanta Hawks 112"
nba_cup(r0, "Atlanta Hawks") # => "Error(float number):New York Knicks 101.12 Atlanta Hawks 112"
```

### Link to kata on codewars.com
https://www.codewars.com/kata/5a420163b6cfd7cde5000077
