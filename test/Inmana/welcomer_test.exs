defmodule Inmana.WelcomerTest do
  use ExUnit.Case, async: true

  alias Inmana.Welcomer

  describe "welcomer/1" do
    test "when the user is special, returns a special message" do
      params = %{"name" => "banana", "age" => "42"}
      expected_result = {:ok, "you are very special banana"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "when the user is not special, returns a message" do
      params = %{"name" => "gustavo", "age" => "21"}
      expected_result = {:ok, "Welcome gustavo"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "when the user is under age, returns a error" do
      params = %{"name" => "gustavo", "age" => "17"}
      expected_result = {:error, "you shall not pass gustavo"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end
  end
end
