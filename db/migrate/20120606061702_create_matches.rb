class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.text :team1
      t.text :team2
      t.integer :score1
      t.integer :score2

      t.timestamps
    end
  end
end
