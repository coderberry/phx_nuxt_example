defmodule PhxNuxtExampleWeb.PageController do
  use PhxNuxtExampleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
