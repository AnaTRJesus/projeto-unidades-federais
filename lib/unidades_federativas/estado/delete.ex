defmodule UnidadesFederativas.Estado.Delete do
  alias UnidadesFederativas.{Estado,Repo}

  def call(id) do
    case fetch_estado(id) do
      nil -> {:error, "Estado não encontrado"}
      estado -> Repo.delete(estado)
    end
  end

  defp fetch_estado(id), do: Repo.get(Estado, id)
end
