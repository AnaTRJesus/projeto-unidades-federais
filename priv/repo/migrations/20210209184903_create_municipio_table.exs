defmodule UnidadesFederativas.Repo.Migrations.CreateMunicipioTable do
  use Ecto.Migration

  def change do
    create table(:municipio, primary_key: true) do
      add :nome, :string
      add :prefeito, :string
      add :populacao, :integer

      add :estado_id, references(:estado, on_delete: :delete_all)
    end
  end
end
