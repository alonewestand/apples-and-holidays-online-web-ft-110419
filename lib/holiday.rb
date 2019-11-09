require 'pry'

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

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(hash, supply_drop)
 holiday_supplies[:winter].each do |key, value| value << supply_drop end
 end
 
def add_supply_to_memorial_day(hash,supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies (hash, season, holiday, supply)
  hash[season][holiday]=supply
  supply
end

def all_winter_holiday_supplies(wintery)
  holiday_supplies[:winter].map do |holiday, supplies|
    supplies
  end.flatten
end

  def all_supplies_in_holidays(holiday_supplies)
holiday_supplies.each do |season, holiday|
    puts "#{season}".to_s.capitalize + ":" 
    holiday.each do |literal_holiday, value|
      help_me = literal_holiday.to_s.split("_")
      help_me.each do |it|
        it.capitalize!
        if opperate.length > 1
          opperate.join
        end
      end
      puts "  #{opperate.join(" ")}: #{value.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  bbq_holidays = []
  holiday_hash.each do |season, holiday|
    holiday.each do |literal_holiday, items|
      if items.include?("BBQ")
        bbq_holidays << literal_holiday
      end
    end
  end
  bbq_holidays
end