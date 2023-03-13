defmodule Backend.Stage do
  use Ecto.Schema
  import Ecto.Changeset

  schema "stages" do
    field :resolved_at, :utc_datetime
    field :stage, Ecto.Enum, values: [:applied, :screening, :interview, :result]
    field :status, Ecto.Enum, values: [:pending, :succeed, :rejected]

    timestamps()
  end

  @doc false
  def changeset(stage, attrs) do
    stage
    |> cast(attrs, [:stage, :status, :resolved_at])
    |> validate_required([:stage, :status])
  end
end
