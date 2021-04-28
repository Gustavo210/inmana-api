defmodule InmanaWeb.RestaurantsControllerTest do
  use InmanaWeb.ConnCase, async: true

  describe "create/2" do
    test "when all params are valid, create the user", %{conn: conn} do
      params = %{name: "Seu creisom", email: "tabajara@gmail.com"}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:created)

      assert %{
               "massage" => "Restaurant created!",
               "restaurant" => %{
                 "email" => "tabajara@gmail.com",
                 "id" => _id,
                 "name" => "Seu creisom"
               }
             } = response
    end

    test "when all params are invalid, return an error", %{conn: conn} do
      params = %{name: "", email: "tabajara@gmail.com"}

      expected_response = %{"message" => %{"name" => ["can't be blank"]}}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert response == expected_response
    end
  end
end
