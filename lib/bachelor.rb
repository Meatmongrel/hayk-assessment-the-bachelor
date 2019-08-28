require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |att|
    return att["name"].split[0] if att["status"] === "Winner"
  end
end

def get_contestant_name(data, occupation)
  data.each do |_person, value|
    value.each do |person|
      return person["name"] if person["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  num = 0
  data.each do |season, hash|
    hash.each do |person|
      if person["hometown"] == hometown
        num += 1
      end
    end
  end
  num
end

def get_occupation(data, hometown)
  data.each do |_person, value|
    value.each do |person|
      return person["name"] && person["occupation"] if person["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  data[season].each do |person|
    age += person["age"].to_f
  end
  (age / (data[season]).length).round
end
