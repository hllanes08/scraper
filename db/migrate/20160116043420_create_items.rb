class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :id
      t.string :type
      t.string :name

      t.timestamps null: false
    end
  end
end
