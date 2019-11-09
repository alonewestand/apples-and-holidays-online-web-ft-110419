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

def all_supplies_in_holidays(hash)
  hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      supply.each do |items|
    end
    end
  end
  all_supplies_in_holidays(hash)
end

def holiday_supplies_hash
  holiday_supplies_hash.map do |season, holiday|
    holidays.map do |holiday, supply|
      holiday if supplies.include?("BBQ")
 end
end.flatten.compact
all_holidays_with_bbq(holiday_supplies_hash)
end