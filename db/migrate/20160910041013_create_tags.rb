class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :type
      t.string :content
      t.integer :page_id

      t.timestamps null: false
    end
  end
end
