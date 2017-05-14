The Pipe Operator
===

The pipe operator takes the result of the expression on the left and inserts it as the first parameter of the function call on the right.
Ex without pipe operator:
```Elixir
defmodule URLWorker do
    def start(url) do
        do_request(HTTPoison.get(url))
    end
    # code
end
```
Pipe operator ex:
```Elixir
defmodule URLWorker do
    def start(url) do
        result = url |> HTTPoison.get |> do_request
    end
    # code
end
```

More examples:

Uppercase then split
```Elixir 
"Elixir rocks" |> String.upcase |> String.split
["ELIXIR", "ROCKS"]
```
Check Ending
```Elixir
iex> "elixir" |> String.ends_with?("ixir")
true
```