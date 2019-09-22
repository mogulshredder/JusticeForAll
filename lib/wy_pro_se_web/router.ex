defmodule WyProSeWeb.Router do
  use WyProSeWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WyProSeWeb do
    pipe_through :browser

    get "/",                 PageController, :index
    get "/court",            PageController, :court
    get "/circuit",          PageController, :circuit
    get "/circuit-response", PageController, :circuit_response
    get "/district",         PageController, :district
    get "/federal",          PageController, :federal
    get "/bankruptcy",       PageController, :bankruptcy
    get "/lawyers",          PageController, :lawyers
    get "/pro_se",           PageController, :pro_se
  end

  # Other scopes may use custom stacks.
  # scope "/api", WyProSeWeb do
  #   pipe_through :api
  # end
end
