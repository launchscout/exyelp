defmodule ExyelpTest do
  require IEx
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  setup_all do
    ExVCR.Config.cassette_library_dir("fixture/vcr_cassettes")
    :ok
  end

  test "search" do
    use_cassette "yelp_search", match_requests_on: [:query] do
      creds = %{
        consumer_key: "key",
        consumer_secret: "secret",
        token: "token",
        token_secret: "secret"
      }
      params = %{location: "Cincinnati, OH", term: "Chili"}
      results = Exyelp.search(params, creds)
      assert results.total > 0
      assert List.first(results.businesses)["name"]
    end
  end
end
