require_relative 'beautiful_dates'
require 'timecop'
require 'active_support/core_ext/integer/inflections'

describe "day" do
  let (:time) {Time.now}
  
  it "shoould return date with suffix" do
    BeautifulDates.new.day_with_suffix.should eq(time.strftime("#{time.day.ordinalize} %b %Y"))
  end

end
