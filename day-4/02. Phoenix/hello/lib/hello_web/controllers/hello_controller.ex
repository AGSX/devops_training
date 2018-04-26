defmodule HelloWeb.HelloController do
use HelloWeb, :controller

  def index(conn, params) do
    who = Map.get(params, "who", "world")
    render conn, "index.html", who: who
  end
end
