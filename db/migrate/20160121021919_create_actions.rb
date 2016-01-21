class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :type
      t.string :name
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
