defmodule UnidadesFederativas.Municipio.Create do
  alias UnidadesFederativas.{Municipio,Repo}

  def call(params) do
    params
    |> Municipio.build()
    |> create_municipio()
  end
    defp create_municipio({:ok, struct}), do: Repo.insert(struct)
    defp create_municipio({:error, _changset} = error), do: error
end
