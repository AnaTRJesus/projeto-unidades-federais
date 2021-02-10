defmodule UnidadesFederativas.Municipio do
  use Ecto.Schema
  import Ecto.Changeset

  schema "municipio" do
    field :nome, :string
    field :prefeito, :string
    field :populacao, :integer
    belongs_to :estado, UnidadesFederativas.Estado

  end

  @required_params [:nome, :estado_id]

  def changeset(params), do: create_changeset(%__MODULE__{}, params)
  def changeset(municipio, params), do: create_changeset(municipio, params)

  def create_changeset(module_or_municipio, params) do
    module_or_municipio
    |> cast(params, @required_params)
    |> validate_required(@required_params)
  end

  def build(params)  do
      params
      |> changeset()
      |> apply_action(:insert)
  end
end
