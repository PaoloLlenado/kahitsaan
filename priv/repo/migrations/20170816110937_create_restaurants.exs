defmodule Kahitsaan.Repo.Migrations.CreateRestaurants do
  use Ecto.Migration

  def change do
    create table(:restaurants) do
      add :name, :string
      add :address, :string
      add :price_range, :decimal
      add :cuisine, :string

      timestamps()
    end

  end
end
