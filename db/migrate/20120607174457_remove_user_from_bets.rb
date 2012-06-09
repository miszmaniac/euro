class RemoveUserFromBets < ActiveRecord::Migration
  def up
    remove_column :bets, :user
  end

  def down
    add_column :bets, :user, :integer
  end
end
