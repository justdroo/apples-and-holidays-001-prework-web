holiday_supplies = {
   :winter => {
     :christmas => ["Lights", "Wreath"],
     :new_years => ["Party Hats"]
   },
   :summer => {
     :fourth_of_july => ["Fireworks", "BBQ"]
   },
   :fall => {
     :thanksgiving => ["Turkey"]
   },
   :spring => {
     :memorial_day => ["BBQ"]
   }
 }

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

      puts holiday_list.join(" ") + ": " + supplies
    end

  end

end
all_supplies_in_holidays(holiday_supplies)
