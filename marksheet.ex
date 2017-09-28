defmodule Student do

	name=IO.gets "Please enter the Name =>" 
	rollNumber=IO.gets "Please enter Roll Number =>"
	IO.puts "Your subjects are =>"
	s1="Math"
	s2="English"
	s3="Programming"
	IO.puts s1
	IO.puts s2
	IO.puts s3

	m1=IO.gets "Mark obtained in Maths "
	m2=IO.gets "Mark obtained in English "
	m3=IO.gets "Mark obtained in Programming "
	
	stud=[name: %{Name: "name", RollNo: rollNumber, subjects: [%{s1: m1, s2: m2, s3: m3}]}]
	#stud=[name: %{Name: "name", RollNo: rollNumber, subjects: [%{:name=>""}]}]
	IO.puts "Name= "<>name
	IO.puts "RollNumber= "<>rollNumber
	
	IO.inspect stud
end
		

	