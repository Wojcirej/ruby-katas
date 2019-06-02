require 'date'
def week_day_from_date(date)
  Date.parse(date).strftime("%A")
end
