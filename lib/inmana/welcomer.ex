defmodule Inmana.Welcomer do
  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.downcase()
    |> evaluete(age)
  end

  defp evaluete("banana", 42) do
    {:ok, "you are very special banana"}
  end

  defp evaluete(name, age) when age >= 18 do
    {:ok, "Welcome #{name}"}
  end

  defp evaluete(name, _age) do
    {:error, "you shall not pass #{name}"}
  end
end
