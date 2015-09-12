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

Call `Exyelp.search` with params and credentials. See `exyelp_test` for example code.
