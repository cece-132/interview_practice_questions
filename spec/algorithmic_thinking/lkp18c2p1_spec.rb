require 'pry'
require './lib/algorithmic_thinking/lkp18c2p1'

RSpec.describe 'Food Lines' do

  describe '#solve(lines, num_of_lines, people_to_enter)' do
    it 'returns the lines that each person would enter' do
      lines = [2,2,3,3,3]
      m = 5
      n = 3
      expect(solve(lines, n, m)).to eq("2\n2\n3")
    end
  end

  describe '#shortest_line(lines, ppl_to_enter)' do
    it 'returns the line each person goes into' do
      lines = [2,2,3,3,3]
      n = 3
      expect(shortest_line_index(lines, n)).to eq(0)
    end
  end
end