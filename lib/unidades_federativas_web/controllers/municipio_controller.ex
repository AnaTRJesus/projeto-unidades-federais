defmodule UnidadesFederativasWeb.MunicipioController do
  use UnidadesFederativasWeb, :controller

  action_fallback UnidadesFederativasWeb.FallbackController

  def create(conn, params) do
    params
    |> UnidadesFederativas.create_municipio()
    |> handle_response(conn)
  end

  defp handle_response({:ok, municipio}, conn) do
    conn
    |> put_status(201)
    |> render("create.json", municipio: municipio)
  end

  defp handle_response({:error, _municipio} = error, _conn), do: error

  def delete(conn, %{"id" => id}) do
    id
    |> UnidadesFederativas.delete_municipio()
    |> handle_delete(conn)
  end

  defp handle_delete({:ok, _municipio}, conn) do
    conn
    |> put_status(204)
    |> text("")
  end

  defp handle_delete({:error, _reason} = error, _conn), do: error


  def index(conn, _params) do
    UnidadesFederativas.show_municipio_all()
    |>handle_callAll(conn);
  end

  defp handle_callAll({:ok, municipios}, conn) do
    conn
    |> put_status(200)
    |> render("municipios_all.json", municipios: municipios)
  end

  defp handle_callAll({:error, _reason} = error, _conn), do: error

  def show(conn, %{"id" => id}) do
    id
    |> UnidadesFederativas.show_municipio()
    |> handle_get(conn)
  end

  defp handle_get({:ok, municipio}, conn) do
    conn
    |> put_status(200)
    |> render("municipio.json", municipio: municipio)
  end

  defp handle_get({:error, _reason} = error, _conn), do: error

  def update(conn, params) do
    params
    |> UnidadesFederativas.update_municipio()
    |> handle_update(conn)
  end

  defp handle_update({:ok, municipio}, conn) do
    conn
    |> put_status(200)
    |> render("update.json", municipio: municipio)
  end

  defp handle_update({:error, _municipio} = error, _conn), do: error
end
