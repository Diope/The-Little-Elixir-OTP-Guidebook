# defmodule MeterToLengthConverter.Feet do
# 	def convert(m) do
# 		m * 3.28084
# 	end
# end

# defmodule MeterToLengthConverter.Inch do
# 	def convert(m) do
# 		m*39.3701
# 	end
# end
# 
# Idiomatic way
# Function clauses

defmodule MeterToLengthConverter do
	def convert(:feet, m) do
		m * 3.28084
	end

	def convert(:inch, m) do
		m * 39.3701
	end
end