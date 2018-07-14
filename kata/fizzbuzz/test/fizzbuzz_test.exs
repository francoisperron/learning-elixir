defmodule FizzbuzzTest do
  use ExUnit.Case
  
  test "multiples of 3 returns Fizz" do
    assert Fizzbuzz.of(3) === "Fizz"
    assert Fizzbuzz.of(6) === "Fizz"
  end

  test "multiples of 5 returns Buzz" do
    assert Fizzbuzz.of(5) === "Buzz"
    assert Fizzbuzz.of(10) === "Buzz"
  end

  test "multiples of 3 and 5 returns FizzBuzz" do
    assert Fizzbuzz.of(15) === "FizzBuzz"
    assert Fizzbuzz.of(30) === "FizzBuzz"
  end

  test "other numbers returns the number" do
    assert Fizzbuzz.of(2) === "2"
    assert Fizzbuzz.of(4) === "4"
  end
end
