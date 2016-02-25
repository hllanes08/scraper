class AddExpiredAtToUserForToken < ActiveRecord::Migration
  def change
    add_column :users,:expires_token_at, :datetime
  end
end
