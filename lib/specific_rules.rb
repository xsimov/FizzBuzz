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
