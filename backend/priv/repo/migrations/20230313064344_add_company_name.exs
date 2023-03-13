defmodule Backend.Repo.Migrations.AddCompanyName do
  use Ecto.Migration

  def change do
    alter table(:job_applications) do
      add :company_name, :string
    end
  end
end
