require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Jeff") }
  let(:cake) { Dessert.new("cake", 10, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity"
      expect(cake.quantity).to eq(10)
    end

    it "starts ingredients as an empty array"
      expect(cake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity"
      expect(Dessert.new("cake", "poop", chef)).to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
      cake.add_ingredient("flour")
      expect(cake.ingredients).to include("flour")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
      expect { cake.eat(20)}.to raise_error("Too much")
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
