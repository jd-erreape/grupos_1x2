class CreateBetLines < ActiveRecord::Migration
  def change
    create_table :bet_lines do |t|
      t.references :match
      t.references :bet
      t.string :selected_result

      t.timestamps
    end
    add_index :bet_lines, :match_id
    add_index :bet_lines, :bet_id
  end
end
