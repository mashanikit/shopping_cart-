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

class Products
  attr_accessor :name, :price
  attr_reader :tax

  def initialize (name, price)
    @name = name
    @price = price
    @tax = 1.13
  end

  def total_price
    total_price = @price * @tax
    total_price.round(2)
  end



end

# product1 = Products.new("ring", 10)
# product2 = Products.new("necklace", 20)
# product3 = Products.new("bracelet", 25)
