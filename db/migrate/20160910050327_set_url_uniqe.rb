class SetUrlUniqe < ActiveRecord::Migration
  def change
      add_index :pages, :url, unique: true
  end
end
