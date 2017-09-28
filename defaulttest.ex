defmodule ConcatTest do
  def join(a,b\\ nil ,sep \\ " ") 
  def join(a,b,_sep) when is_nil(b) do
  
  end
  def join(a,b,sep) do
  a<>sep<>b 
    
  end
end

IO.puts ConcatTest.join("hello","world");
IO.puts ConcatTest.join("hello","world","_");
IO.puts ConcatTest.join("hello");