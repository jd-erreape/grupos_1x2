class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.references :round

      t.timestamps
    end
    add_index :bets, :round_id
  end
end
