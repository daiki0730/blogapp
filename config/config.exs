# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :blogapp,
  ecto_repos: [Blogapp.Repo]

# Configures the endpoint
config :blogapp, BlogappWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "27qmdPbdCUSyfbRA0IZ6iIal8PIlWtO1NnCr5v+yhqb9fmYWsBS2rFkdsol69pbA",
  render_errors: [view: BlogappWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Blogapp.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
