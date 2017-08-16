defmodule Kahitsaan.Restaurants do
  use Ecto.Schema
  import Ecto.Changeset
  alias Kahitsaan.Restaurants


  schema "restaurants" do
    field :address, :string
    field :cuisine, :string
    field :name, :string
    field :price_range, :decimal

    timestamps()
  end

  @doc false
  def changeset(%Restaurants{} = restaurants, attrs) do
    restaurants
    |> cast(attrs, [:name, :address, :price_range, :cuisine])
    |> validate_required([:name, :address, :price_range, :cuisine])
  end
end
