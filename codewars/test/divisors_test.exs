defmodule DivisorsTest do
  use ExUnit.Case

  def divisors(number) do
    divisor? = fn (d) -> rem(number, d) == 0 end
    divisors = for i <- 2..number - 1, divisor?.(i), do: i

    case divisors do
      [] -> "#{number} is prime"
      _ -> divisors
    end
  end

  test "divisors of 12 is 2,3,4,6" do
    assert divisors(12) == [2, 3, 4, 6]
  end

  test "divisors of 25 is 5" do
    assert divisors(25) == [5]
  end

  test "2 is not prime" do
    assert divisors(2) == [2, 1]
  end

  test "13 is prime" do
    assert divisors(13) == "13 is prime"
  end

end