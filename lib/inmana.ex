defmodule Inmana do
  @moduledoc """
  Inmana keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  alias Inmana.Restaurants.Create, as: RestaurantsCreate
  alias Inmana.Supplies.Create, as: SuppliesCreate
  alias Inmana.Supplies.Get, as: SupplyGet

  defdelegate create_restaurant(params), to: RestaurantsCreate, as: :call
  defdelegate create_supplies(params), to: SuppliesCreate, as: :call
  defdelegate get_supply(params), to: SupplyGet, as: :call
end
