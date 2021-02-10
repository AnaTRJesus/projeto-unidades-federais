defmodule UnidadesFederativasWeb.MunicipioView do
  use UnidadesFederativasWeb, :view

  def render("create.json", %{municipio: municipio}) do
    %{
      message: "Municipio criado com sucesso",
        municipio: %{
          id: municipio.id,
          nome: municipio.nome
     }
    }
  end

  def render("update.json", %{municipio: municipio}) do
    %{
      message: "Municipio atualizado com sucesso",
      municipio: %{
        id: municipio.id,
        nome: municipio.nome
   }
    }
  end

  def render("municipios_all.json", %{municipios: municipios}) do
    %{municipios: render_many(municipios, UnidadesFederativasWeb.MunicipioView, "municipio.json")}
  end

  def render("municipio.json", %{municipio: municipio}) do
    %{
      id: municipio.id,
      id_estado: municipio.estado_id,
      nome: municipio.nome
    }
  end
end
