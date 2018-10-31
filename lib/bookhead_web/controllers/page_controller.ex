defmodule BookheadWeb.PageController do
  use BookheadWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
