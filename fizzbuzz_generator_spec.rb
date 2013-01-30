# fizz buzz generator spec
require './fizzbuzz_generator'

describe FizzBuzzGenerator, "#print" do 
	context 'given 15 as an input'
	  it "returns fizzbuzz for numbers 1 through 15" do 
		fizzbuzz = FizzBuzzGenerator.new(15)
		fizzbuzz.generate
		fizzbuzz.print.should eq(["1","2","3  fizz","4","5  buzz","6  fizz","7","8","9  fizz","10  buzz","11","12  fizz","13","14","15  fizzbuzz"])

	end
	context 'given 0 as input'
  	  it "returns 'not supported message' if 0 supplied" do 
	    fizzbuzz = FizzBuzzGenerator.new(0)
	    fizzbuzz.generate
	    fizzbuzz.print.should eq(["Zero, negative numbers, and nil not supported"])
	end
	context 'given negative input'
	  it "returns 'not supported message' if 0 supplied" do 
	    fizzbuzz = FizzBuzzGenerator.new(-5)
	    fizzbuzz.generate
	    fizzbuzz.print.should eq(["Zero, negative numbers, and nil not supported"])
	end
	context 'given nil input'
	  it "returns 'not supported message' if nothing supplied" do 
 	    fizzbuzz = FizzBuzzGenerator.new()
	    fizzbuzz.generate
	    fizzbuzz.print.should eq(["Zero, negative numbers, and nil not supported"])
	end
end

describe FizzBuzzGenerator, "#html" do 
	it "returns fomatted html for numbers 1 through 10" do 
		fizzbuzz = FizzBuzzGenerator.new(10) 
		fizzbuzz.generate
		fizzbuzz.html.should eq("<ul>
	<li> 1 </li> 
	<li> 2 </li> 
	<li> 3  fizz </li> 
	<li> 4 </li> 
	<li> 5  buzz </li> 
	<li> 6  fizz </li> 
	<li> 7 </li> 
	<li> 8 </li> 
	<li> 9  fizz </li> 
	<li> 10  buzz </li> 
</ul>")
	end
end

describe FizzBuzzGenerator, "#json" do 
	it "returns json output for numbers 1 through 12" do 
		fizzbuzz = FizzBuzzGenerator.new(12) 
		fizzbuzz.generate
		fizzbuzz.json.should eq("\"[\\\"1\\\",\\\"2\\\",\\\"3  fizz\\\",\\\"4\\\",\\\"5  buzz\\\",\\\"6  fizz\\\",\\\"7\\\",\\\"8\\\",\\\"9  fizz\\\",\\\"10  buzz\\\",\\\"11\\\",\\\"12  fizz\\\"]\"")
	end
end

