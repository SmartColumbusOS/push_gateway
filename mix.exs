defmodule PushGateway.MixProject do
  use Mix.Project

  def project do
    [
      app: :push_gateway,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {PushGateway.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:gen_stage, "~> 0.14"},
      {:jason, "~> 1.1"}
    ]
  end
end
