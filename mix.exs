defmodule CldrTerritories.Mixfile do
  use Mix.Project

  @version "1.2.0"

  def project do
    [
      app: :ex_cldr_territories,
      version: @version,
      elixir: "~> 1.5",
      name: "Cldr Territories",
      source_url: "https://github.com/schultzer/cldr_territories",
      description: description(),
      package: package(),
      docs: docs(),
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  defp description do
    """
    Terrritory formatting functions for the Common Locale Data Repository (CLDR)
    package ex_cldr
    """
  end


  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_cldr, "~> 1.5"},
      {:ex_doc, ">= 0.18.1", only: :dev},
      {:poison, "~> 2.1 or ~> 3.0", optional: true},
      {:jason, "~> 1.0", optional: true}
    ]
  end

  defp package do
    [
      maintainers: ["Benjamin Schultzer"],
      licenses: ["MIT"],
      links: links(),
      files: [
        "lib", "config", "mix.exs", "README*", "CHANGELOG*", "LICENSE*"
      ]
    ]
  end

  def docs do
    [
      source_ref: "v#{@version}",
      main: "readme",
      extras: ["README.md", "CHANGELOG.md"]
    ]
  end

  def links do
    %{
      "GitHub"    => "https://github.com/schultzer/cldr_territories",
      "Readme"    => "https://github.com/schultzer/cldr_territories/blob/v#{@version}/README.md",
      "Changelog" => "https://github.com/schultzer/cldr_territories/blob/v#{@version}/CHANGELOG.md"
    }
  end

end
