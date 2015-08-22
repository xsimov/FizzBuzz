require_relative '../lib/fizzbuzz'

rules = {
  "GOD!!" => lambda { |number| number == 47 },
  "Fizz" => lambda { |number| number % 3 == 0 },
  "Buzz" => lambda { |number| number % 5 == 0 },
  "Zazz" => lambda { |number| number % 7 == 0 },
  "Nike" => lambda { |number| number % 13 == 0 },
  "Blu" => lambda { |number| number.to_s.include? "1" }
}
describe "FizzBuzz game" do

  describe "Rafa de Castro's rules in IronHack" do
    let(:game) { FizzBuzz.new(rules) }

    it "returns a string" do
      expect(game.apply_rules_for(2)).to be_a(String)
    end

    it "returns the number as a string when any rules apply to it" do
      expect(game.apply_rules_for(2)).to eq("2")
    end

    it "returns Fizz when 3" do
      expect(game.apply_rules_for(3)).to eq("Fizz")
    end

    it "returns Buzz when 5" do
      expect(game.apply_rules_for(5)).to eq("Buzz")
    end

    it "returns Zazz when 7" do
      expect(game.apply_rules_for(7)).to eq("Zazz")
    end

    it "returns FizzZazzBlu when 21" do
      expect(game.apply_rules_for(21)).to eq("FizzZazzBlu")
    end

    it "returns Blu when number contains 1" do
      expect(game.apply_rules_for(17)).to eq("Blu")
    end

    it "returns GOD!! when number is 47" do
      expect(game.apply_rules_for(47)).to eq("GOD!!")
    end
  end

  it "has the basic rules if no rules are passed on instantiation" do
    regular_game = FizzBuzz.new
    expect(regular_game.apply_rules_for(1)).to eq("1")
    expect(regular_game.apply_rules_for(3)).to eq("Fizz")
    expect(regular_game.apply_rules_for(5)).to eq("Buzz")
    expect(regular_game.apply_rules_for(15)).to eq("FizzBuzz")
  end

end

