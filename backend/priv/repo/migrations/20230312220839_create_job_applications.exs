defmodule Backend.Repo.Migrations.CreateJobApplications do
  use Ecto.Migration

  def change do
    create table(:job_applications) do
      add :job_name, :string
      add :job_description, :string
      add :min_salary, :integer
      add :max_salary, :integer

      timestamps()
    end
  end
end
