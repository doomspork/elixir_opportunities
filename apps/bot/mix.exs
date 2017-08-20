defmodule Bot.Mixfile do
  use Mix.Project

  def project do
    [app: :bot,
     version: "0.1.0",
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger],
     mod: {Bot.Application, []}]
  end

  defp deps do
    [
      {:httpoison, "~> 0.13.0"},

      {:bypass, "~> 0.8.1", only: :test}
    ]
  end
end
