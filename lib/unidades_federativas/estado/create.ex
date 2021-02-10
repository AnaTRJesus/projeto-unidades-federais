defmodule UnidadesFederativas.Estado.Create do
  alias UnidadesFederativas.{Estado,Repo}

  def call(params) do
    params
    |> Estado.build()
    |> create_estado()
  end
    defp create_estado({:ok, struct}), do: Repo.insert(struct)
    defp create_estado({:error, _changset} = error), do: error
end
