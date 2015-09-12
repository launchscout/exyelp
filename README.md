Exyelp
======

A Elixir client for the Yelp API. Uses `:oauther` for OAuth signing.

### Usage

Add to deps in mix.exs. For now you have to use our fork of oauther so
you'll need to have that in your deps.

```elixir
defp deps do
  [
    {:oauther, github: "gaslight/oauther"}
    {:exyelp, "0.0.1"}
  ]
end
```

Call `Exyelp.search` with params and credentials.

```elixir
creds = %{
  consumer_key: "key",
  consumer_secret: "secret",
  token: "token",
  token_secret: "secret"
}
params = %{location: "Cincinnati, OH", term: "Chili"}
results = Exyelp.search(params, creds)
```
