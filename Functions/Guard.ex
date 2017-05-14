defmodule MeterToLengthCoverter do
  def convert(:feet, m) when is_number(m), do: m * 3.28084
  def convert(:inch, m) when is_number(m), do: m * 39.3701
  def convert(:yard, m) when is_number(m), do: m * 1.09361
end

#Now Elixir will throw a FunctionClauseError when you try something like MeterToLengthConverter.convert(:feet, "smelly").