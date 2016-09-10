class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :url
      t.string :h1
      t.string :h2
      t.string :h3

      t.timestamps null: false
    end
  end
end
