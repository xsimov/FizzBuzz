class FizzBuzz
  BASIC_RULES = {
    "Fizz" => lambda { |number| number % 3 == 0 },
    "Buzz" => lambda { |number| number % 5 == 0 }
  }

  def initialize(set_of_rules = BASIC_RULES)
    @rules = set_of_rules
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
