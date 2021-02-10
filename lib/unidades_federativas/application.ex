defmodule UnidadesFederativas.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      UnidadesFederativas.Repo,
      # Start the Telemetry supervisor
      UnidadesFederativasWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: UnidadesFederativas.PubSub},
      # Start the Endpoint (http/https)
      UnidadesFederativasWeb.Endpoint
      # Start a worker by calling: UnidadesFederativas.Worker.start_link(arg)
      # {UnidadesFederativas.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: UnidadesFederativas.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    UnidadesFederativasWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
