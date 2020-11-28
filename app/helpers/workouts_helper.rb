module WorkoutsHelper
  def workout_date_detail(date)
    today_or_yesterday(date) || date.strftime("%a, %d %b")
  end

  def workout_date_day(date)
    today_or_yesterday(date) || date.strftime("%a")
  end

  def workout_date_short(date)
    date.strftime("%d %b")
  end

  def today_or_yesterday(date)
    if date == Date.today
      'Today'
    elsif date == Date.yesterday
      'Yesterday'
    end
  end
end
