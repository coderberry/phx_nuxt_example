defmodule PhxNuxtExampleWeb.Router do
  use PhxNuxtExampleWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", PhxNuxtExampleWeb do
    pipe_through(:api)
    get("/*path", PageController, :index)
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhxNuxtExampleWeb do
  #   pipe_through :api
  # end
end
