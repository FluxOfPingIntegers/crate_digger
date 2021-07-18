module StatesHelper
  def city_count_for(state)
    count = state.cities.count
    case count
    when 1
        "Only 1 city listed."
    when 2..999
        "#{count} cities listed."
    else
        "No listings for this state"
    end
  end
end
