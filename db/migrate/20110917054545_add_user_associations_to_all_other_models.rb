class AddUserAssociationsToAllOtherModels < ActiveRecord::Migration
  def change
    add_column :comedians, :user_id, :integer
  end
end
