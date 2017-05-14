Lists
=====

Lists are somewhat similar to *linked lists* from other programs in that random access has a asymptotic notation of `0(n)` (linear).
The following is the recursive definition of a list: a non-empty list consists of a head and a tail. The tail itself is a list
ex: `[1,2,3] == [1 | [2 | [3 | []]]]` is `True`
* The head of the list is 1, followed by the tail of the list. This tail, in turn is another list: the head of this list is 2, followed by the tail which is another list, whose head is 3 and tail is an empty list. **The tail of the final element of any list is always an empty list.**
`|` in Elixir is called the *cons* operator. When applied to lists, it separates the head and the tail. That is, the list is destructured.
ex:
```elixir
[head | tail] = [1,2,3]` #(notice the pattern matching)
iex> head
1
iex> tail
[2,3]
```
Note: `tail` is also a list, which is in line with the definition.

The cons operator can be used to append to the beginning of a list
ex:
```Elixir
iex(1)> list = [1, 2, 3] [1, 2, 3]
iex(2)> [0 | list ]
[0, 1, 2, 3]
```

Flatting A List
-----
`flatten/1` takes in a possibly nest list and returns a flattened version.
`List.flatten[1,[:two],["three",[]]]`
returns
`[1, :two, "three]`

[possible implementation of flatten/1](list_flatten.ex)