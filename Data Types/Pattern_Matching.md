#Pattern Matching
Elixir uses the equals operator (=) to perform pattern matching. Unlike most lan- guages, Elixir uses the = operator for more than variable assignment; = is called the match operator. From now on, when you see =, think matches instead of equals.

## Using `=` for assigning
The first rule of the match operator is that variable assignments only happen when the variable is on the left side of the expression. For example:
`iex> programmers = Map.put(programmers, :jose, "Elixir")`
This is the result:
`%{joe: "Erlang", jose: "Elixir", matz: "Ruby", rich: "Clojure"}`

## Using `=` for matching
Here’s when things get slightly interesting. Let’s swap the order of the previous expression:
`iex> %{joe: "Erlang", jose: "Elixir", matz: "Ruby", rich: "Clojure"} = programmers`
`%{joe: "Erlang", jose: "Elixir", matz: "Ruby", rich: "Clojure"}`
Notice that this is not an assignment. Instead, a successful pattern match has occurred, because the contents of both the left side and programmers are identical.
Next, let’s see an unsuccessful pattern match:
`iex> %{tolkien: "Elvish"} = programmers`
`** (MatchError) no match of right hand side value: %{joe: "Erlang", jose:
➥"Elixir", matz: "Ruby", rich: "Clojure"}`
When an unsuccessful match occurs, a MatchError is raised. 
