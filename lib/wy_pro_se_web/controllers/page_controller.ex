defmodule WyProSeWeb.PageController do
  use WyProSeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def court(conn, _params) do
    render(conn, "damages.html")
  end

  def circuit(conn, _params) do
    render(conn, "circuit.html")
  end

  def circuit_response(conn, _params) do
    render(conn, "circuit-response.html")
  end

  def district(conn, _params) do
    render(conn, "district.html")
  end

  def federal(conn, _params) do
    render(conn, "district.html")
  end

  def bankruptcy(conn, _params) do
    render(conn, "district.html")
  end

  def lawyers(conn, _params) do
    render(conn, "lawyers.html")
  end
  
  def pro_se(conn, params) do
    render(conn, "pro_se.html")
  end
  
end
