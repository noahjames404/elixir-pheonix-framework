defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  plug :layout

  def index(conn, _params) do
    render(conn,"index.html")
  end

  def show(conn,%{"messenger" => messenger}) do
    conn
    |> put_flash(:info, "welcome")
    |> render(:show, messenger: messenger)

  end

  defp layout(conn,_) do
    put_layout(conn,:admin)
  end

end
