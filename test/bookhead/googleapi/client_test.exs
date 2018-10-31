defmodule Bookhead.GoogleAPI.ClientTest do
  use ExUnit.Case, async: true

  @tag :external
  test "can connect to the google API" do
    response = Bookhead.GoogleAPI.Client.search_by_author("Nathan Ensmenger")
    assert response["totalItems"] == 3
  end
end
