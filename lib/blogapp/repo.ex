defmodule Blogapp.Repo do
  use Ecto.Repo,
    otp_app: :blogapp,
    adapter: Ecto.Adapters.Postgres
end
