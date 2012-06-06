class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.string :user
      t.integer :score1
      t.integer :score2
      t.references :match

      t.timestamps
    end
    add_index :bets, :match_id
  end
end
