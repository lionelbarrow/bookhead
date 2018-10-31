defmodule Bookhead.GoogleAPI.Client do
  @api_key "AIzaSyCiHuUKs6O9hntfaw6I98nHS0CKnepaIL8"
  @url "https://www.googleapis.com/books/v1/volumes"

  @fields ["totalItems", "items"]

  def search_by_author(author) do
    query_url = URI.encode(@url <> "?q=inauthor:#{author}&key=" <> @api_key)

    HTTPoison.get!(query_url).body
    |> Poison.decode!()
    |> Map.take(@fields)
  end
end
