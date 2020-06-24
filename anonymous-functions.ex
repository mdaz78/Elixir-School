# anonymous functions

# fn example
sum = fn(a, b) -> a + b end
result = sum.(5, 6)
IO.puts result

# & example
sum = &(&1 + &2)
result = sum.(3, 3)
IO.puts(result)

# & example greater than
greater = &(if &1 > &2, do: &1, else: &2)
result = greater.(6, 7)
IO.puts(result)
