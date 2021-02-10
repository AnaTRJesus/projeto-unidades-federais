defmodule UnidadesFederativas.Municipio.Update do
  alias UnidadesFederativas.{Municipio,Repo}

  def call(%{"id" => id} = params) do
    case fetch_municipio(id) do
      nil -> {:error, "Municipio não encontrado"}
      municipio -> update_municipio(municipio, params)
    end
  end

  defp fetch_municipio(id), do: Repo.get(Municipio, id)

  defp update_municipio(municipio, params) do
    municipio
    |> Municipio.changeset(params)
    |> Repo.update()
  end
end
