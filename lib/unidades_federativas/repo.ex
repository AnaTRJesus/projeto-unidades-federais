defmodule UnidadesFederativas.Repo do
  use Ecto.Repo,
    otp_app: :unidades_federativas,
    adapter: Ecto.Adapters.MyXQL
end
