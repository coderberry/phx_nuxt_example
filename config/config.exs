# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx_nuxt_example,
  ecto_repos: [PhxNuxtExample.Repo]

# Configures the endpoint
config :phx_nuxt_example, PhxNuxtExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mTiQnfOtJVPl2GuiWCFZunA0pVKzT49FZJtq7QKA/PJJc2G2cGfAcvAKsRxkICl6",
  render_errors: [view: PhxNuxtExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxNuxtExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
