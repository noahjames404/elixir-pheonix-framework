defmodule HelloWeb.Plugs.Locale do
  import Plug.Conn

  @locales ["en","fr","de"]

  def init(default), do: default

  def call(%Plug.Conn{params: %{"locale" => loc,"power" => power}} = conn, _default) when loc in @locales do
    assign(conn, :data, %{power: power, locale: loc})
  end

  def call(conn, default) do
    assign(conn, :data, %{power: default, locale: default})
  end
end
