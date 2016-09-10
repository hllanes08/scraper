class DeleteLinks < ActiveRecord::Migration
  def change
     drop_table :links
  end
end
