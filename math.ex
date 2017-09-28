defmodule Math do
  def sum(a, b) do
    a + b
  end

  defp minus(a,b) do
    a-b
  end

  def zero?(0), do: true
  def zero?(x) when is_integer(x), do: false
  def show(x) do
        IO.inspect x
  end
  
end

