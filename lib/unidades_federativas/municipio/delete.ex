defmodule UnidadesFederativas.Municipio.Delete do
  alias UnidadesFederativas.{Municipio,Repo}

  def call(id) do
    case fetch_municipio(id) do
      nil -> {:error, "Estado não encontrado"}
      municipio -> Repo.delete(municipio)
    end
  end

  defp fetch_municipio(id), do: Repo.get(Municipio, id)
end
