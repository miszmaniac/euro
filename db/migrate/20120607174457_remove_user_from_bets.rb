class RemoveUserFromBets < ActiveRecord::Migration
  def up
    remove_column :matches, :user, :integer
  end

  def down
    add_column :matches, :user
  end
end
