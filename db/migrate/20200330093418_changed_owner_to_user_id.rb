class ChangedOwnerToUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :owner, :user_id
  end
end
