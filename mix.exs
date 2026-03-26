defmodule Test.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :test,
      version: @version,
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:igniter, "~> 0.7"},
      {:git_ops, "~> 2.9"},
    ]
  end
end
