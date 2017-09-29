defmodule FibonacciSeries do
	
	def main() do
		IO.puts "Hello...Welcome" 
		FibonacciSeries.takeInput();
	end

	def takeInput() do
		IO.puts "jayram"
		{range, _ }=IO.gets("Please enter how many fibonacci number you want ") |> Integer.parse
		
		IO.puts("Fibonacci numbers are =>")
		a=0
		b=1
		FibonacciSeries.printNumbers(a,b,range)
	end

	def printNumbers(a,b,range) do
		
		#IO.puts range
		
		case range do

			0->
					nil 
			_->
					IO.puts a+b
					printNumbers(b,a+b,range-1)
		end

	end

end

FibonacciSeries.main();