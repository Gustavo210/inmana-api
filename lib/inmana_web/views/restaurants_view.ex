defmodule InmanaWeb.RestaurantsView do
  use InmanaWeb, :view

  def render("create.json", %{restaurant: restaurant}) do
    %{
      massage: "Restaurant created!",
      restaurant: restaurant
    }
  end
end
