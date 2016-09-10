class RemoveHeadersPage < ActiveRecord::Migration
  def change
    remove_column :pages, :h1
    remove_column :pages, :h2
    remove_column :pages, :h3
    add_column :tags, :url, :string
  end
end
