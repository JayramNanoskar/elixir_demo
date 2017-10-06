defmodule ReverseNumber do
		def main() do
				IO.puts("Welcome in Elixir")
				ReverseNumber.takeInput()
		end

		def takeInput() do
				num=IO.gets("Please enter any number. We will give you the reverse of that\n")
				{number,_}=Integer.parse(num)
					
				reverse=0
				IO.puts("Entered number is #{number}")
		
				doReverse(number,reverse)
					
		end


		def doReverse(number,reverse) when number >= 1 do
					
							remender= rem number, 10
							reverse=(reverse*10)+remender
							division= div number, 10

							doReverse(division,reverse)
				
		end

		def doReverse(number,reverse) when number ==0 do

				IO.puts("Reverse number is #{reverse}") 

		end

end

ReverseNumber.main()


