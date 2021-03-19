defmodule Ui.Config do
  def billing_endpoint do
    System.get_env("BILLING_ENDPOINT") || "localhost:8000"
  end

  def users_endpoint do
    System.get_env("USERS_ENDPOINT") || "localhost:4567"
  end
end
