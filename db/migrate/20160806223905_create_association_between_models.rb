class CreateAssociationBetweenModels < ActiveRecord::Migration[5.0]
  def change
    add_column :closets, :user_id, :integer, :null => false
    add_column :photos, :closet_id, :integer, :null => false
  end
end
