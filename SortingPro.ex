defmodule NumberSort do
	
	def main() do
		IO.puts "Hello welcome"
		NumberSort.takeInput()
	end

	def takeInput() do
		{count,_}=IO.gets("Please enter count of number you want to sort ")|> Integer.parse
		IO.puts count
		IO.puts "Please enter the numbers. We will give sorted numbers.."

			list=for _x<- 1..count do
					{n,_}=IO.gets("Enter number ")|>Integer.parse
					n
			end

			IO.inspect list
		NumberSort.sort(list)
	end

	def sort(list) do
		IO.puts "In sort function"
		l=Enum.sort(list)
		
			#for _n<- list do 
				#for n<- list do 
				#	IO.puts n

				#end
			#end
		IO.inspect l
	end
	
end

NumberSort.main()