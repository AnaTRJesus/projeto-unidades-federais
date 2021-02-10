defmodule UnidadesFederativas.Estado.Update do
  alias UnidadesFederativas.{Estado,Repo}

  def call(%{"id" => id} = params) do
    case fetch_estado(id) do
      nil -> {:error, "Estado não encontrado"}
      estado -> update_estado(estado, params)
    end
  end

  defp fetch_estado(id), do: Repo.get(Estado, id)

  defp update_estado(estado, params) do
    estado
    |> Estado.changeset(params)
    |> Repo.update()
  end
end
