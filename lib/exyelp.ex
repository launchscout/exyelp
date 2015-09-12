defmodule Exyelp do

  alias Exyelp.Search

  def build_url(params) do
    uri = URI.parse("http://api.yelp.com/v2/search")
    to_string(%{uri | query: URI.encode_query(params)})
  end

  def search(params, creds) do
    url = build_url(params)
    oauth_creds = OAuther.credentials(creds)
    signed_params = OAuther.sign("GET", url, [], oauth_creds)
    {signed_header, req_params} = OAuther.header(signed_params)
    Search.start
    Search.get!(url, [signed_header]).body
  end
end
