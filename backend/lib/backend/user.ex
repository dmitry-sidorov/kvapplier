defmodule Backend.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :desired_salary, :integer
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :min_salary, :integer
    field :password, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :email, :password, :min_salary, :desired_salary])
    |> validate_required([:first_name, :last_name, :email, :password])
  end
end
