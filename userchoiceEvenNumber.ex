defmodule UserchoiceEvenNumber do

def main() do
IO.puts "hello"

UserchoiceEvenNumber.takeInput();

end

def takeInput() do
	total=IO.gets "Please enter how many numbers you will enter \n"
	IO.puts "Enter "<>total<>" numbers. we will tell you even among them"

	
	{t,_}=Integer.parse(total)

	list=for _t <-1..t do
				{t, _} = IO.gets("enter number ") |> Integer.parse
			  	
			  t
	end

	UserchoiceEvenNumber.printEven(list);
	

end


def printEven(list) do
	result=Enum.concat([list])|>Enum.filter(fn x->rem(x,2)==0 end)

	IO.inspect list

	IO.inspect result
end

end

UserchoiceEvenNumber.main();