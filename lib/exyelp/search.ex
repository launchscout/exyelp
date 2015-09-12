defmodule Exyelp.Search do
  use HTTPoison.Base

  def process_response_body(body) do
    body
    |> Poison.decode!
    |> Enum.map(fn({k, v}) -> {String.to_atom(k), v} end)
    |> Enum.into %{}
  end
end
