require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  holiday_hash.map do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.map do |holiday, supplies|
      holiday = holiday.to_s.split("_")
      holiday.map do |name|
        name.capitalize!
      end
      puts "  #{holiday.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_BBQ = []

  holiday_hash.map do |season, holiday|
    holiday.map do |holiday, supplies|
    supplies.map do |name|
      if name.to_s == "BBQ"
        holidays_with_BBQ << holiday
      end
    end
  end
  end
  holidays_with_BBQ
end
