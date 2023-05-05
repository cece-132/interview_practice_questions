require 'pry'
require './lib/algorithmic_thinking/lkp18c2p1'

RSpec.describe 'Food Lines' do

  describe '#solve(lines, total_lines, new_people)' do
    it 'returns the lines that each person would enter' do
      lines = [2,2,3,3,3]
      n = 5
      m = 3
      expect{solve(lines, n, m)}.to output("2\n2\n3\n").to_stdout
    end
  end

  describe '#shortest_line(lines, ppl_to_enter)' do
    it 'returns the line each person goes into' do
      lines = [3,3,4,4,4]
      n = 3
      expect(shortest_line_index(lines, n)).to eq(0)
    end
  end
end