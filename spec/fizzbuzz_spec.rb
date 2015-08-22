require_relative '../lib/fizzbuzz'

RULES = {
  "GOD!!" => lambda { |number| number == 47 },
  "Fizz" => lambda { |number| number % 3 == 0 },
  "Buzz" => lambda { |number| number % 5 == 0 },
  "Zazz" => lambda { |number| number % 7 == 0 },
  "Nike" => lambda { |number| number % 13 == 0 },
  "Blu" => lambda { |number| number.to_s.include? "1" }
}
describe "FizzBuzz game" do

  let(:game) { FizzBuzz.new(RULES) }

  it "must return a string" do
    expect(game.apply_rules_for(2)).to be_a(String)
  end

  it "must return itself as a string when any rules apply to it" do
    expect(game.apply_rules_for(2)).to eq("2")
  end

  it "must return Fizz when 3" do
    expect(game.apply_rules_for(3)).to eq("Fizz")
  end

  it "must return Buzz when 5" do
    expect(game.apply_rules_for(5)).to eq("Buzz")
  end

  it "must return Zazz when 7" do
    expect(game.apply_rules_for(7)).to eq("Zazz")
  end

  it "must return FizzZazzBlu when 21" do
    expect(game.apply_rules_for(21)).to eq("FizzZazzBlu")
  end

  it "must return Blu when number contains 1" do
    expect(game.apply_rules_for(17)).to eq("Blu")
  end

  it "must return GOD!! when number is 47" do
    expect(game.apply_rules_for(47)).to eq("GOD!!")
  end

end

