# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bookhead,
  ecto_repos: [Bookhead.Repo]

# Configures the endpoint
config :bookhead, BookheadWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+354zXHK5KaFePRD6WizQZknEJLQD6cA90d2+tbL6DHpCWh1WbM1pQICx6L0T+EQ",
  render_errors: [view: BookheadWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bookhead.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
