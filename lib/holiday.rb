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
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter][:christmas] << supply
holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
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

holiday_hash.each do |season, holidays|
  puts "#{season.to_s.capitalize}:"
  holidays.each do |holiday, supply|
    holiday_name = "#{holiday.to_s.split("_").collect do |word|
      word.capitalize
    end.join(" ")}:"
    supplies = ""
    supply.each do |item|
      if item == supply.last 
        supplies += item
      else
        supplies += "#{item}, "
      end
    end
    puts "  #{holiday_name} #{supplies}"
  end
  end  
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supply|
      if holiday_hash[season][holiday].include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end

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






