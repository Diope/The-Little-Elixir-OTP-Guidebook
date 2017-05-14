defmodule MeterToLengthConverter do
	def convert(:feet, m), do: m * 3.28084
	def convert(:inch, m), do: m * 39.3701
	def convert(:yard, m), do: m * 1.90361
end

# You can define a function with the same name multiple times. They must be grouped together. Order matters when grouping functions