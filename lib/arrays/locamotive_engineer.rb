require 'pry'

class LocomotiveEngineer
  def self.generate_list_of_wagons(*args)
binding.pry
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    raise 'Please implement the LocomotiveEngineer.fix_list_of_wagons method'
  end

  def self.add_missing_stops
    raise 'Please implement the LocomotiveEngineer.add_missing_stops method'
  end

  def self.extend_route_information(route, more_route_information)
    raise 'Please implement the LocomotiveEngineer.extend_route_information method'
  end
end

p LocomotiveEngineer.generate_list_of_wagons(1, 7, 12, 3, 14, 8, 5)