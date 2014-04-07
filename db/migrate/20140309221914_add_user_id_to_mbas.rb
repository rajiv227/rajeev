class AddUserIdToMbas < ActiveRecord::Migration
  def change
    add_column :mbas, :user_id, :integer
  end
end
