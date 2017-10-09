defmodule BubbleSortProgram	do

def main() do

		IO.puts "hello welcome"
		{input,_}=IO.gets("Enter the count of number you want to enter ") |> Integer.parse
		IO.puts "PLease enter #{input} numbers "

		list=for _x<-1..input do

				{num,_}=IO.gets("enter number =>")|>Integer.parse
				num
		end

		IO.inspect list
		IO.inspect BubbleSortProgram.doPass(BubbleSortProgram.doSort(list, []), list)

end


def doSort([first|[second|tail]], acc) do

		#IO.inspect first
		#IO.inspect second
		#IO.inspect tail
		#IO.inspect acc
		[new_first, new_second]=BubbleSortProgram.swapNumber(first, second)

		#IO.inspect new_first
		#IO.inspect new_second

		doSort([new_second|tail], acc++[new_first])

end

def doSort(_list=[],_acc) do

		[]

end

def doSort([first|[]], acc) do

		acc++[first]

end

def swapNumber(n1, n2) do

		if(n1>n2) do
				[n2,n1]
		else 
				[n1,n2]
		end

end

def doPass(new_list, old_list) when new_list == old_list do

		new_list

end

def doPass(new_list, old_list) when new_list != old_list do

		doSort(new_list, []) |> doPass(new_list)

end

end

BubbleSortProgram.main()
