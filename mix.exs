defmodule Blogger.Project do
  use Mix.Project

  def project do
    [
      app: :blogger,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.8"}
    ]
  end
end

