require 'pry'

# class LocomotiveEngineer
#   def self.generate_list_of_wagons(*args)
#     args
#   end

#   def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
#     wagons = []
#     wagons << each_wagons_id.delete(1)
#     wagons << missing_wagons
#     2.times{each_wagons_id.push(each_wagons_id.shift())}
#     wagons << each_wagons_id
#   end

#   def self.add_missing_stops(*args)
#     stop_info = {}
#     args.each do |stop|
#       if stop.include?(:from) && stop.include?(:to)
#         stop_info[:from] = stop[:from]
#         stop_info[:to] = stop[:to]
#       else
#         stop_info[:stops] = stop.values 
#       end
#     end
#     if stop_info[:stops].nil?
#       stop_info[:stops] = []
#       return stop_info
#     else
#       return stop_info
#     end
#   end

#   def self.extend_route_information(route, more_route_information)
#     route_info = {}
#     route.each do |k,v|
#       route_info[k] = v
#     end
#     more_route_information.each do |k,v|
#       route_info[k] = v
#     end
#     route_info
#   end
# end

# Takeaways

# the extended route information method could use some recursion to create a more efficient method.
# I saw another solution that I really liked

class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons) 
    wagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first, second, third, *rest = each_wagons_id
    [third, *missing_wagons, *rest, first, second]
  end

  def self.add_missing_stops(routing_hash, **kwargs)
    {**routing_hash, stops: kwargs.values}
  end
  
  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end


p LocomotiveEngineer.generate_list_of_wagons(1, 7, 12, 3, 14, 8, 5)
p LocomotiveEngineer.fix_list_of_wagons([2, 5, 1, 7, 4, 12, 6, 3, 13], [3, 17, 6, 15])
p LocomotiveEngineer.add_missing_stops({from: "New York", to: "Miami"},
                                        stop_1: "Washington, DC", 
                                        stop_2: "Charlotte", 
                                        stop_3: "Atlanta",
                                        stop_4: "Jacksonville", 
                                        stop_5: "Orlando")
p LocomotiveEngineer.add_missing_stops({ from: 'New York', to: 'Philadelphia' })
p LocomotiveEngineer.extend_route_information({"from": "Berlin", "to": "Hamburg"}, {"length": "100", "speed": "50"})