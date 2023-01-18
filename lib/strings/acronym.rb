require 'pry'

class Acronym
  def self.abbreviate(string)
    string.split(/\W/).map(&:chr).join.upcase
  end
end


Acronym.abbreviate('Portable Network Graphics')