class ChangeParentIdToPersonId < ActiveRecord::Migration[5.2]
  def change
    change_column :plant_parenthoods, :plant_parent_id, :person_id
  end
end