class CreateClosets < ActiveRecord::Migration[5.0]
  def change
    create_table :closets do |t|
      t.string :description 
      t.timestamps
    end
  end
end
