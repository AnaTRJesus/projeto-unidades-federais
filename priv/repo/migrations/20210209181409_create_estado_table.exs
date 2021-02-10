defmodule UnidadesFederativas.Repo.Migrations.CreateEstadoTable do
  use Ecto.Migration

  def change do
    create table(:estado, primary_key: true) do
      add :nome, :string
      add :sigla, :string
    end
  end
end
