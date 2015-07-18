defmodule Issues.Mixfile do
  use Mix.Project


  def project do
    [ app:     :issues,
      version: "0.0.1",
      name:    "Issues",
      elixir:  ">= 0.0.0",
      source_url: "https://github.com/pragdave/issues",
      escript: escript_config,
      deps:    deps ]
  end

  # Configuration for the OTP application
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :httpoison, :jsx]]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat.git" }
  defp deps do
    [
      { :httpoison, "~> 0.7"},
      { :jsx,       "~> 2.6.2"},
      { :ex_doc,    github: "elixir-lang/ex_doc"},
      { :earmark, ">= 0.0.0"}
    ]
  end

  defp escript_config do
    [main_module: Issues.CLI ]
  end
end
