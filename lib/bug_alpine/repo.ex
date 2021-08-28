defmodule BugAlpine.Repo do
  use Ecto.Repo,
    otp_app: :bug_alpine,
    adapter: Ecto.Adapters.Postgres
end
