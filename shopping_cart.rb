# Your program should have two separate classes: one to represent a product to be purchased and one to represent a shopping cart containing a collection of products.
#
# Each product has a name, base price, and tax rate. There should also be a method to calculate and return the product's total price based on the base price and tax rate.
#
# Each shopping cart has a collection of products. It should also have the following functionality:
#
# add an product to the cart
# remove an product from the cart
# add up the total cost of all products in the cart before tax
# add up the total cost of all products in the cart after tax
# Think about which class needs to make reference to the other one and remember to use a require statement accordingly. You don't need it in both files.
require_relative 'products'

class Cart
  @@products = []

  def initialize
    @cost_before_tax = 0
    @cost_after_tax = 0
  end

  def self.all_products
    @@products
  end

  def sum
    @cost_before_tax = 0
    @cost_after_tax = 0
    @@products.each do |product|
      @cost_before_tax += product.price
      @cost_after_tax += product.total_price
    end
  end

  def add_product(name, price)
    new_product = Products.new(name, price)
    @@products << new_product
  end

  def self.rem_product(name)
    @@products.delete(name)
  end

end


amazon = Cart.new
amazon.add_product("a", 100)
amazon.add_product("b", 200)
amazon.add_product("c", 300)

puts amazon.sum


amazon.self.rem_product("c")

#NOT WORKING 

puts Cart.all_products
