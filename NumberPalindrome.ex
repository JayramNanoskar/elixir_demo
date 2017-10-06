defmodule NumberPalindrome do
		def main() do
				IO.puts("Welcome in Elixir")
				NumberPalindrome.takeInput()
		end

		def takeInput() do
				num=IO.gets("Please enter any number. We will tell you if it is palindrome or not\n")
				{number,_}=Integer.parse(num)
					
				reverse=0
				IO.puts("Entered number is #{number}")
		
				change=checkPali(number,reverse)

				if(number==change) do
						IO.puts "It is a palindrome number"
				else
						IO.puts "It is not a palindrome number"
				end
				
					
		end


		def checkPali(number,reverse) when number >= 1 do
					
							remender= rem number, 10
							reverse=(reverse*10)+remender
							division= div number, 10

							checkPali(division,reverse)
				
		end

		def checkPali(number,reverse) when number ==0 do

				reverse

		end

end

NumberPalindrome.main()