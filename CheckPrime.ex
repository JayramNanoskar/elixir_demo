defmodule PrimeNumberCheck do

		def main() do
				IO.puts("Welcome in Elixir")
				PrimeNumberCheck.takeInput()
		end


		def takeInput() do
				{input,_}=IO.gets("Please enter any number. We will tell you if it is prime or not  ")|> Integer.parse
				isPrime(input)
		end


		def isPrime(number) do

				list=Enum.concat([1..div(number,2)]) |> Enum.filter(fn(x) -> rem(number,x) ==0 end)		
				
				if(length(list)>1) do
						IO.puts("Its not prime number")
				else
						IO.puts("Its prime number")
				end

				#IO.inspect list

		end
	


end

PrimeNumberCheck.main()






