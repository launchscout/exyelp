defmodule Exyelp.Mixfile do
  use Mix.Project

  def project do
    [app: :exyelp,
     version: "0.0.1",
     elixir: "~> 1.0",
     description: "An Elixir Yelp API client",
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:exvcr, "~> 0.3", only: [:dev, :test]},
      {:oauther, github: "gaslight/oauther"},
      {:httpoison, ">= 0.0.1"},
      {:poison, ">= 0.0.1"}
    ]
  end

  defp package do
    [ contributors: ["superchris"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/gaslight/exyelp"} ]
  end

end
