defmodule Evennumber do

	def main() do
		IO.puts "welcome to Elixir"
		Evennumber.evenPrint();
	end

	def evenPrint() do
		IO.puts "hello......"
		
		list=Enum.concat([1..10])|>Enum.filter(fn(x)->rem(x,2)==0 end)
		
			IO.inspect list 
			
	end

end

IO.puts "welcome"
Evennumber.main();