defmodule UnidadesFederativasWeb.EstadoController do
  use UnidadesFederativasWeb, :controller

  action_fallback UnidadesFederativasWeb.FallbackController

  def create(conn, params) do
    params
    |> UnidadesFederativas.create_estado()
    |> handle_response(conn)
  end

  defp handle_response({:ok, estado}, conn) do
    conn
    |> put_status(201)
    |> render("create.json", estado: estado)
  end

  defp handle_response({:error, _estado} = error, _conn), do: error

  def delete(conn, %{"id" => id}) do
    id
    |> UnidadesFederativas.delete_estado()
    |> handle_delete(conn)
  end

  defp handle_delete({:ok, _estado}, conn) do
    conn
    |> put_status(204)
    |> text("")
  end

  defp handle_delete({:error, _reason} = error, _conn), do: error

  def index(conn, _params) do
    UnidadesFederativas.show_estado_all()
    |>handle_callAll(conn);
  end

  defp handle_callAll({:ok, estados}, conn) do
    conn
    |> put_status(200)
    |> render("estados_all.json", estados: estados)
  end

  defp handle_callAll({:error, _reason} = error, _conn), do: error

  def show(conn, %{"id" => id}) do
    id
    |> UnidadesFederativas.show_estado()
    |> handle_get(conn)
  end

  defp handle_get({:ok, estado}, conn) do
    conn
    |> put_status(200)
    |> render("estado.json", estado: estado)
  end

  defp handle_get({:error, _reason} = error, _conn), do: error

  def update(conn, params) do
    params
    |> UnidadesFederativas.update_estado()
    |> handle_update(conn)
  end

  defp handle_update({:ok, estado}, conn) do
    conn
    |> put_status(200)
    |> render("update.json", estado: estado)
  end

  defp handle_update({:error, _estado} = error, _conn), do: error
end
