defmodule Backend.JobApplication do
  use Ecto.Schema
  import Ecto.Changeset

  schema "job_applications" do
    field :company_name, :string
    field :job_description, :string
    field :job_name, :string
    field :max_salary, :integer
    field :min_salary, :integer
    belongs_to :user, Backend.User

    timestamps()
  end

  @doc false
  def changeset(job_application, attrs) do
    job_application
    |> cast(attrs, [:job_name, :job_description, :min_salary, :max_salary])
    |> validate_required([:job_name, :job_description, :company_name])
    |> validate_length(:job_name, 2..100)
    |> validate_length(:job_description, 2..500)
  end
end
