require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) { Dessert.new("pie", 15, "test") }
  let(:bad_dessert) { Dessert.new("", 0.215, "")}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("pie")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(15)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{ bad_dessert }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to be_empty
      dessert.add_ingredient("sugar")
      expect(dessert.ingredients).to include("sugar")
    end
  end

  describe "#mix!" do
    let(:ingredients) { ["sugar","flour","eggs"] }
    it "shuffles the ingredient array" do
      dessert.add_ingredient("sugar")
      dessert.add_ingredient("eggs")
      dessert.add_ingredient("flour")
      dessert.mix!
      expect(dessert.ingredients).to match_array(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.quantity).to eq(15)
      dessert.eat(5)
      expect(dessert.quantity).to eq(10)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect(dessert.quantity).to eq(15)
      expect{ dessert.eat(20) }.to raise_error('not enough left!')
    end
  end

  describe "#serve" do
    let(:pie) { Dessert.new("pie", 10, chef)}
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Mario the Great Baker")
      expect(pie.serve).to start_with("Chef")
      expect(pie.serve).to include("the Great Baker")
    end
  end

  describe "#make_more" do
    let(:pie) { Dessert.new("pie", 10, chef)}
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(pie)
      pie.make_more
    end
  end
end
