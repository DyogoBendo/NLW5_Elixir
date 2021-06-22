defmodule Inmana.WelcomerTest do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do
    test "when the user is special, returns a special message" do
      params = %{"name" => "banana", "age" => "42"}
      result = Welcomer.welcome(params)
      expected_result =  {:ok, "You are very special, banana"}
      assert result == expected_result
    end
    test "when the user is not special, returns a  message" do
      params = %{"name" => "rafael", "age" => "22"}
      result = Welcomer.welcome(params)
      expected_result =  {:ok, "Welcome rafael!"}
      assert result == expected_result
    end
    test "when the user is under age, returns an error" do
      params = %{"name" => "rafael", "age" => "12"}
      result = Welcomer.welcome(params)
      expected_result =  {:error, "You shall not pass!"}
      assert result == expected_result
    end
  end
end
