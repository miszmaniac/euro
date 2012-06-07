class AddUsersToBets < ActiveRecord::Migration
  def up
    add_column :bets, :user_id, :integer
    add_index :bets, :user_id
  end

  def down
    remove_column :bets, :user_id
  end
end
