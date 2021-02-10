defmodule UnidadesFederativasWeb.EstadoView do
  use UnidadesFederativasWeb, :view

  def render("create.json", %{estado: estado}) do
    %{
      message: "Estado criado com sucesso",
        estado: %{
          id: estado.id,
          nome: estado.nome,
          sigla: estado.sigla
        }
    }
  end

  def render("update.json", %{estado: estado}) do
    %{
      message: "Estado atualizado com sucesso",
        estado: %{
          id: estado.id,
          nome: estado.nome,
          sigla: estado.sigla
        }
    }
  end

  def render("estados_all.json", %{estados: estados}) do
    %{estados: render_many(estados, UnidadesFederativasWeb.EstadoView, "estado.json")}
  end

  def render("estado.json", %{estado: estado}) do
    %{
      id: estado.id,
      nome: estado.nome,
      sigla: estado.sigla
    }
  end
end
