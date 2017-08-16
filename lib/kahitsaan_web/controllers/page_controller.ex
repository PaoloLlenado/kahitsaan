defmodule KahitsaanWeb.PageController do
  use KahitsaanWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
