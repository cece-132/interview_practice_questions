# find problem at https://dmoj.ca/problem/lkp18c2p1
require 'pry'

def solve(lines, total_lines, new_people)
  raise 'Input has too many lines' if total_lines > 100
  raise 'Input has too new people' if new_people > 100
  new_people.times do
    shortest = shortest_line_index(lines, total_lines)
    puts lines[shortest]
    lines[shortest] += 1
  end
end

def shortest_line_index(lines, total_lines)
  shortest = 0
  (1..(total_lines - 1)).each do |line_position|
    shortest = line_position if lines[line_position] < lines[shortest]
  end
  shortest
end