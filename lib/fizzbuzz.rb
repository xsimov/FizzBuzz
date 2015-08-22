class FizzBuzz
  def initialize(set_of_rules)
    basic_rules = {
      "Fizz" => lambda { number % 3 == 0 },
      "Buzz" => lambda { number % 5 == 0 }
    }
    @rules = set_of_rules || basic_rules
  end

  def apply_rules_for(number)
    @final = ""
    and_justice_for_all(number)
    return number.to_s if @final.empty?
    @final
  end

  def and_justice_for_all(number)
    @rules.each do |key, lambda|
      @final += key if lambda.call(number)
    end
  end
end

rules = {
  "GOD!!" => lambda { |number| number == 47 },
  "Fizz" => lambda { |number| number % 3 == 0 },
  "Buzz" => lambda { |number| number % 5 == 0 },
  "Zazz" => lambda { |number| number % 7 == 0 },
  "Nike" => lambda { |number| number % 13 == 0 },
  "Blu" => lambda { |number| number.to_s.include? "1" }
}

game = FizzBuzz.new(rules)

(1..100).each do |number|
  puts game.apply_rules_for(number)
end
