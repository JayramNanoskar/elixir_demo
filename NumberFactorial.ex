defmodule Factorial do
	
	def main() do
		
			IO.puts "Hello welcome in elixir programming"
			IO.puts "====Please enter any number. We will tell you the factorial of that number===="
			{input,_}=IO.gets("Enter the number =>")|> Integer.parse	
			IO.puts "You want factorial of: #{input}"
			IO.puts "Factorial is #{Factorial.getFact(input)}"

	end

	def getFact(number) when number>0 do

				number * getFact(number - 1)
	end

	def getFact(number) when number==0 do

				1
	end



end

Factorial.main()

