defmodule GallowsWeb.PageController do
  use GallowsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", product: "crayon", count: 2)
  end
end
