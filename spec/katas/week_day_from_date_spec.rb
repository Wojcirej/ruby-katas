require './katas/week_day_from_date/lib/week_day_from_date'

RSpec.describe "#week_day_from_date" do
  subject { week_day_from_date(date) }

  shared_examples "result" do |date, expected_result|

    context "when date = '#{date}'" do
      let(:date) { date }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "2019-06-02", "Sunday"
  include_examples "result", "2019-05-27", "Monday"
  include_examples "result", "2019-05-28", "Tuesday"
  include_examples "result", "2019-05-29", "Wednesday"
  include_examples "result", "2019-05-30", "Thursday"
  include_examples "result", "2009-12-25", "Friday"
  include_examples "result", "2019-06-01", "Saturday"
end
