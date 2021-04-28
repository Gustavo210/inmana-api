defmodule Inmana.Restaurants.Create do
  alias Inmana.{Repo, Restaurant}

  def call(parans) do
    parans
    |> Restaurant.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Restaurant{}} = result), do: result
  defp handle_insert({:error, result}), do: {:error, %{result: result, status: :bad_request}}
end
