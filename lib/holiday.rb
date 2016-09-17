require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }

holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
    value << supply
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season] = {holiday_name => supply_array}


  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supply_array = []
  holiday_hash[:winter].each do |holiday, supplies|
    supply_array << supplies
  end
supply_array.flatten
end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |key, value|
    season = key.to_s
    puts season.capitalize + ":"

    value.each do |key2, value2|
      holiday = key2.to_s
      holiday_split = holiday.split("_")
      holiday_list =[]

      holiday_split.each do |word|
        holiday_list << word.capitalize
      end

      supplies = value2.join(", ")

      puts "  " + holiday_list.join(" ") + ": " + supplies
    end

  end

end


def all_holidays_with_bbq(holiday_hash)
  bbq_array = []
  holiday_hash.each do |key, value|
    value.each do |key2, value2|
      if value2.include?("BBQ")
        bbq_array << key2
      end
    end
  end
bbq_array
end
