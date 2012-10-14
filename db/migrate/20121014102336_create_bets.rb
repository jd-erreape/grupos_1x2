class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.references :match
      t.integer :selection

      t.timestamps
    end
    add_index :bets, :match_id
  end
end
