defmodule Keryx.Web.AdminView do
  use Keryx.Web, :view
  alias Keryx.Web.AdminView

  def render("index.json", %{admins: admins}) do
    %{data: render_many(admins, AdminView, "admin.json")}
  end

  def render("show.json", %{admin: admin}) do
    %{data: render_one(admin, AdminView, "admin.json")}
  end

  def render("admin.json", %{admin: admin}) do
    %{id: admin.id,
      name: admin.name}
  end
end
