# with function guards
#defmodule Fizzbuzz do
#  def of(number) when rem(number, 15) == 0, do: "FizzBuzz"
#  def of(number) when rem(number, 3) == 0, do: "Fizz"
#  def of(number) when rem(number, 5) == 0, do: "Buzz"
#  def of(number), do: Integer.to_string(number)
#end

# with cond
#defmodule Fizzbuzz do
#  def multiple?(number, multiple), do: rem(number, multiple) === 0
#
#  def of(number) do
#    cond do
#      multiple?(number, 15) -> "FizzBuzz"
#      multiple?(number, 5) -> "Buzz"
#      multiple?(number, 3) -> "Fizz"
#      true -> Integer.to_string(number)
#    end
#  end
#end

# with case
defmodule Fizzbuzz do
  def of(number) do
    multiple? = fn multiple -> rem(number, multiple) === 0 end

    case {multiple?.(3), multiple?.(5)} do
      {false, false} -> Integer.to_string(number)
      {true, false} -> "Fizz"
      {false, true} -> "Buzz"
      {true, true} -> "FizzBuzz"
    end
  end
end
