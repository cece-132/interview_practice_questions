require 'pry'

class LocomotiveEngineer
  def self.generate_list_of_wagons(*args)
    args
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    wagons = []
    wagons << each_wagons_id.delete(1)
    wagons << missing_wagons
    2.times{each_wagons_id.push(each_wagons_id.shift())}
    wagons << each_wagons_id
  end

  def self.add_missing_stops
    raise 'Please implement the LocomotiveEngineer.add_missing_stops method'
  end

  def self.extend_route_information(route, more_route_information)
    raise 'Please implement the LocomotiveEngineer.extend_route_information method'
  end
end

p LocomotiveEngineer.generate_list_of_wagons(1, 7, 12, 3, 14, 8, 5)
p LocomotiveEngineer.fix_list_of_wagons([2, 5, 1, 7, 4, 12, 6, 3, 13], [3, 17, 6, 15])