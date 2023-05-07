require 'pry'
require './lib/algorithmic_thinking/cco07p2'

RSpec.describe 'Snowflakes' do

  describe '.snowflake class' do
    it 'exists and has attributes' 
    it 'each integers value cant be less than zero'
    it 'each integers value cant be more than 10_000_000'
  end

  describe '#compare(snowflake_count, snowflake_desciptions)' do
    it 'returns response if any two or more snowflakes are the same'
    it 'returns response if the snowflakes are unique'
    it 'snowflake_count cant be larger than 100_000'
  end

end