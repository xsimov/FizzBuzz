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
      @final += key if lambda.call
    end
  end
end

rules = {
  "GOD!!" => lambda { number == 47 },
  "Fizz" => lambda { number % 3 == 0 },
  "Buzz" => lambda { number % 5 == 0 },
  "Zazz" => lambda { number % 7 == 0 },
  "Nike" => lambda { number % 13 == 0 },
  "Blu" => lambda { number.to_s.include? "1" }
}

game = FizzBuzz.new(rules)

(1..100).each do |number|
  puts game.apply_rules_for(number)
end

# Rules
#   3 fizz
#   5 buzz
#   7 zazz
#   13 nike
#   if it contains 1 BLUBLU
#   EXACT 47 GOD!!
