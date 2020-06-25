defmodule Greeter do
  def hello(name) do
    "Hello #{name}"
  end

  def helloAgain(name), do: "Hello #{name}"
end

# recursive function example
defmodule Length do
  def of([]), do: 0
  def of([ _ | tail ]), do: 1 + of(tail)
end

# pattern matching
defmodule Greeter1 do
  def greet(%{name: person_name}) do
    IO.puts "Hello #{person_name}"
  end
end

# guards and private functions
defmodule Greeting do
  def hello(names) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello
  end

  def hello(name) when is_binary(name) do
    phrase() <> name
  end

  defp phrase, do: "Hello, "
end

# default arguments
defmodule Greeter2 do
  def hello(name, language_code \\ "en") do
    phrase(language_code) <> name
  end

  defp phrase("en"), do: "Hello "
  defp phrase("es"), do: "Hola "
end

# combining guard and default arguements
defmodule Greeter3 do
  def hello(names, language_code \\ "en")

  def hello(names, language_code) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello(language_code)
  end

  def hello(name, language_code) when is_binary(name) do
    phrase(language_code) <> name
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "

end

# Call functions
IO.puts Greeter.hello("Zafar")
IO.puts Greeter.helloAgain("Zafar")
IO.puts Length.of [1, 2, 3]

fred = %{
  name: "Fred",
  age: 95,
  favourite_color: "yellow"
}

Greeter1.greet(fred)
res = Greeting.hello ["Sean", "Steve"]
IO.puts res

res2 = Greeter2.hello("Zafar", "es")
IO.puts res2

res3 = Greeter3.hello ["Zack", "Efron"]
IO.puts res3
