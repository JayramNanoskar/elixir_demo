defmodule Math do
  def zero?(0) do
    true
  end

  def zero?(x) when is_integer(x) do
    false
  end
end
IO.puts Math.zero?(0)         
IO.puts Math.zero?(1)         
IO.puts Math.zero?([1, 2, 3]) 
IO.puts Math.zero?(0.0) 
