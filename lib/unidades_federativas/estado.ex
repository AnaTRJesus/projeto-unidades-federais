defmodule UnidadesFederativas.Estado do
  use Ecto.Schema
  import Ecto.Changeset

  schema "estado" do
    field :nome, :string
    field :sigla, :string

    has_many :municipio,UnidadesFederativas.Municipio
  end

  @required_params [:nome, :sigla]

  def changeset(params), do: create_changeset(%__MODULE__{}, params)
  def changeset(estado, params), do: create_changeset(estado, params)

  def create_changeset(module_or_estado, params) do
    module_or_estado
    |> cast(params, @required_params)
    |> validate_required(@required_params)
  end

  def build(params) do
    params
    |> changeset()
    |> apply_action(:insert)
  end
end
