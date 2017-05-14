defmodule ID3Parser do
	def parse(file_name) do
		case File.read(file_name) do # Read the MP3 binary
			{:ok, mp3} -> #A successful file read
				mp3_byte_size = byte_size(mp3) - 128 # Calculate the audio portion of the MP3 in byte
				<< _ :: binary-size(mp3_byte_size), id3_tag :: binary >> = mp3
				<< "TAG",	title		:: binary-size(30),
							artist		:: binary-size(30),
							album		:: binary-size(30),
							year		:: binary-size(4),
							_rest		:: binary >> = id3_tag
				IO.puts "#{artist} - #{title} (#{album}, #{year})"
				_ ->
					IO.puts "Couldn't open #{file_name}"
		end
	end
end