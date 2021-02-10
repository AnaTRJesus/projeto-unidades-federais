defmodule UnidadesFederativas.Municipio.Get do
  alias UnidadesFederativas.{Municipio,Repo}

  def call(id) do
    case Repo.get(Municipio, id) do
      nil -> {:error, "Estado não encontrado"}
      estado -> {:ok, estado}
    end
  end

  def callAll() do
      case Repo.all(Municipio) do
        nil -> {:error, "Algum erro aconteceu"}
        municipio -> {:ok, municipio}
      end
  end
end
