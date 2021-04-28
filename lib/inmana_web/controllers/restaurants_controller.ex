defmodule InmanaWeb.RestaurantsController do
  use InmanaWeb, :controller

  alias Inmana.Restaurant

  alias InmanaWeb.FallbackController

  action_fallback FallbackController

  def create(conn, parans) do
    with {:ok, %Restaurant{} = restaurant} <- Inmana.create_restaurant(parans) do
      conn
      |> put_status(:created)
      |> render("create.json", restaurant: restaurant)
    end
  end
end
