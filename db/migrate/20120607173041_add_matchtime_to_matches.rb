class AddMatchtimeToMatches < ActiveRecord::Migration
  def up
    add_column :matches, :matchtime, :timestamp
  end

  def down
    remove_column :matches, :matchtime
  end
end
