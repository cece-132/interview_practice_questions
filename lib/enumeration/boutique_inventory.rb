require 'pry'
# class BoutiqueInventory
#   def initialize(items)
#     @items = items
#   end

#   def item_names
#     @items.map do |item|
#       item[:name]
#     end.sort
#   end

#   def cheap
#     @items.map do |item|
#       item if item[:price] < 30
#     end.compact
#   end

#   def out_of_stock
#     @items.map do |item|
#       item if item[:quantity_by_size].empty?
#     end.compact
#   end

#   def stock_for_item(name)
#     @items.each do |item|
#       return item[:quantity_by_size] if item[:name] == name
#     end
#   end

#   def total_stock
#     @items.sum do |item|
#       item[:quantity_by_size].values.sum
#     end
#   end

#   private
#   attr_reader :items
# end

class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.map { |item| OpenStruct.new(item)}
  end

  def item_names
    items.map { |item| item[:name] }.sort

    raise "Refactor the code in item_names"
  end

  def total_stock
    items.sum do |item|
      item[:quantity_by_size].values.sum
    end

    raise "Refactor the code in total_stock"
  end
end

inventory = BoutiqueInventory.new([
  {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
  {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
  {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
  {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
])

# items = [
#   { price: 65.00, name: "Red Brown Dress", quantity_by_size: {} }
# ]
# names = ["Red Brown Dress"]
# puts BoutiqueInventory.new(items).item_names

# BoutiqueInventory.new([
#   {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
#   {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
#   {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
#   {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
# ]).out_of_stock

# BoutiqueInventory.new([
#   {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
#   {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
#   {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
#   {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
# ]).total_stock