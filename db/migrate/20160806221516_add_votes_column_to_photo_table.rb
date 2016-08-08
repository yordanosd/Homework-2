class AddVotesColumnToPhotoTable < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :votes, :integer, :default => 0, :null => false
  end
end
