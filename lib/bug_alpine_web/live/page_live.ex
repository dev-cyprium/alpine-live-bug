defmodule BugAlpineWeb.PageLive do
  use BugAlpineWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, count: 0)}
  end

  @impl true
  def handle_event("increment", _, socket) do
    {:noreply, update(socket, :count, &(&1 + 1))}
  end

  @impl true
  def handle_event("decrement", _, socket) do
    {:noreply, update(socket, :count, &(&1 - 1))}
  end

end
