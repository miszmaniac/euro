class AddBetsendToMatches < ActiveRecord::Migration
  def up
    add_column :matches, :betsend, :timestamp
  end

  def down
    remove_column :matches, :user_id
  end
end
