class AddedSharing < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :shared, :Integer, array: true, default: []
  end
end
