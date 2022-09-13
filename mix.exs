defmodule Sma.Mixfile do
  use Mix.Project

  def project do
    [app: :sma,
     version: "0.1.0",
     elixir: "~> 1.2",
     source_url:
     description:
     package: package(),
     test_coverage: [tool: ExCoveralls],
     preferred_cli_env: ["coveralls": :test, "coveralls.detail": :test, "coveralls.post": :test, "coveralls.html": :test],
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

   Dependencies can be Hex packages:
     [{:sma, "~> 0.1"}]

     {:mydep, "~> 0.3.0"}


  defp deps do
    [{:earmark, "~> 0.1", only: :dev},
    {:ex_doc, "~> 0.11", only: :dev},
    {:excoveralls, "~> 0.5", only: :test}]
  end

  defp package do
    [
      maintainers: [
        "EduardoFco"
      ],
      licenses: ["Apache-2.0"],
    ]
  end
end
