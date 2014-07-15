class FizzBuzz
	def game(number)
		valHash = {	
			3 => "Fizz", 
			5 => "Buzz", 
			7 => "Zazz", 
			13 => "Nike" 
		}
		result = ""
		valHash.each { |mult, word|	result += "#{word}" if (number % mult == 0) }
		return number.to_s if result.empty?
		return result
	end
end



# 3 fizz
# 5 buzz
# 7 zazz
# 13 nike
# if it contains 1 BLUBLU
# EXACT 47 GOD!!