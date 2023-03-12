defmodule Backend.JobApplication do
  use Ecto.Schema
  import Ecto.Changeset

  schema "job_applications" do
    field :job_description, :string
    field :job_name, :string
    field :max_salary, :integer
    field :min_salary, :integer

    timestamps()
  end

  @doc false
  def changeset(job_application, attrs) do
    job_application
    |> cast(attrs, [:job_name, :job_description, :min_salary, :max_salary])
    |> validate_required([:job_name, :job_description, :min_salary, :max_salary])
  end
end
