class AddRoundIdFieldToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :round_id, :integer
    add_index :matches, :round_id
  end
end
