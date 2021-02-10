defmodule UnidadesFederativasWeb.FallbackController do
  use UnidadesFederativasWeb, :controller


  def call(conn, {:error, result}) do
    conn
    |> put_status(404)
    |> put_view(UnidadesFederativasWeb.ErrorView)
    |> render("400.json", result: result)

  end


end
