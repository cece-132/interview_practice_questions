require 'pry'
require './lib/algorithmic_thinking/cco07p2'

RSpec.describe 'Snowflakes' do

  describe 'compare(snowflake_count, snowflake_desciptions)' do
    it 'returns response if any two or more snowflakes are the same' do
      snowflake_count = 2
      snowflakes = ["1 2 3 4 5 6", "4 3 2 1 6 5"]

      expect(compare(snowflake_count, snowflakes)).to eq('Twin snowflakes found')
    end

    it 'returns response if the snowflakes are unique' do
      snowflake_count = 2
      snowflakes = ["1 2 3 4 5 6", "4 3 2 1 8 5"]

      expect(compare(snowflake_count, snowflakes)).to eq('No two snowflakes are alike.')
    end

    it 'snowflake_count cant be larger than 100_000'
  end

  describe 'snowflake class' do
    it 'exists and has attributes' do
      
    end
    
    it 'each integers value cant be less than zero'
    it 'each integers value cant be more than 10_000_000'
  end

end