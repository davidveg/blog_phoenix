defmodule BlogPhoenix.Comment do
  use BlogPhoenix.Web, :model

  schema "comments" do
    field :name, :string
    field :email, :string
    field :content, :string
    belongs_to :post, BlogPhoenix.Post, foreign_key: :post_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :email, :content, :post_id])
    |> validate_required([:name, :email, :content, :post_id])
  end
end
