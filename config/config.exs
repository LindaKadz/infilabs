# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :infilabs,
  ecto_repos: [Infilabs.Repo]

# Configures the endpoint
config :infilabs, InfilabsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bf1TiUDBh8JroOhG8FXIllk6oSQS9ZtGWwzCe4cBtLFFZ/NeLidElG9eBwXMbpU3",
  render_errors: [view: InfilabsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Infilabs.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
