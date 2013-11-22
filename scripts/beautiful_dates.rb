#!/usr/bin/env ruby

class BeautifulDates
  
  def initialize
  @date_time = Time.now
  @date = @date_time.strftime("%d %b %Y")
  end

  def get_day
    regex = /\d{1,2}/
    @date[regex]
  end

  def get_suffix
    suffix = case day[-1].to_i
      when 1
        "st"
      when 2
        "nd"
      when 3
         "rd"
      else
          "th"
      end
  end

  def day_with_suffix

    day = self.get_day
    suffix = self.get_suffix
   @date.sub(/\d{1,2}/, "#{day}#{suffix}")
        
  end
end
