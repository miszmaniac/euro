class AddTeamsIdToMatches < ActiveRecord::Migration
  def change
    remove_column :matches, :team1
    remove_column :matches, :team2

    add_column :matches, :team1_id, :integer
    add_column :matches, :team2_id, :integer
  end
end
