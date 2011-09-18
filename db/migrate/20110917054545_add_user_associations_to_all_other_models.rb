class AddUserAssociationsToAllOtherModels < ActiveRecord::Migration
  def up
    add_column :comedians, :user_id, :integer
  end
  
  def down
    remove_column :comedians, :user_id
  end
end
