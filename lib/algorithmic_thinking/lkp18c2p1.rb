# find problem at https://dmoj.ca/problem/lkp18c2p1
require 'pry'

def solve(lines, total_lines, new_people)
  new_people.times do
    shortest = shortest_line_index(lines, total_lines)
    puts lines[shortest]
    lines[shortest] += 1
  end
end

def shortest_line_index(lines, total_lines)
  shortest = 0
  (1..total_lines).each do |line_position|
    binding.pry
    if lines[line_position] < lines[shortest]
      binding.pry
      shortest = line_position 
    end
  end
  shortest
end