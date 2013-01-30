# FizzBuzz_Generator.rb
require 'json'
require 'rspec'
class FizzBuzzGenerator

	def initialize(high_value = 0)
		@highest_value = high_value
	end

	def generate
		@output_array = []

		@output_array << "Zero, negative numbers, and nil not supported" if (@highest_value <= 0 || @highest_value == nil)

		if @highest_value > 0 then
			for test_number in 1..@highest_value do
		  		@output_array << "#{test_number}  fizz" if (test_number %  3 == 0 && test_number % 5 != 0)
		  		@output_array << "#{test_number}  buzz" if (test_number %  5 == 0 && test_number % 3 != 0)
		  		@output_array << "#{test_number}  fizzbuzz" if (test_number %  15 == 0)
		  		@output_array << "#{test_number}" if (test_number %  3 != 0 && test_number % 5 != 0)
			end
		end
	end
	
	def print
		@output_array.each do |line|
			puts line
		end
	end
	
	def html
		htm = "<ul>\n"
		@output_array.each do |line|
			htm += "	<li> #{line} </li> \n"
		end
		htm = htm += "</ul>"
		return htm
	end

	def json
		@output_array.to_json.to_json
	end
end

#doit = FizzBuzzGenerator.new(15)
#doit.generate
#doit.print
#doit.html
#puts doit.json
