defmodule UnidadesFederativas.Estado.Get do
  alias UnidadesFederativas.{Estado,Repo}

  def call(id) do
    case Repo.get(Estado, id) do
      nil -> {:error, "Estado não encontrado"}
      estado -> {:ok, estado}
    end
  end

  def callAll() do
      case Repo.all(Estado) do
        nil -> {:error, "Algum erro aconteceu"}
        estados -> {:ok, estados}
      end
  end
end
