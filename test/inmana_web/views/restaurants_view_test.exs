defmodule InmanaWeb.RestaurantsViewTest do
  use InmanaWeb.ConnCase, async: true

  import Phoenix.View

  alias Inmana.Restaurant
  alias InmanaWeb.RestaurantsView

  describe "render/2" do
    test "renders create.json" do
      params = %{name: "Seu creisom", email: "tabajara@gmail.com"}
      {:ok, restaurant} = Inmana.create_restaurant(params)

      response = render(RestaurantsView, "create.json", restaurant: restaurant)

      assert %{
               massage: "Restaurant created!",
               restaurant: %Restaurant{
                 email: "tabajara@gmail.com",
                 id: _id,
                 name: "Seu creisom"
               }
             } = response
    end
  end
end
