class ReplacePlantParenthoodTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :plant_parenthoods

    create_table :plant_parenthoods do |t|
      t.integer :plant_id
      t.integer :person_id
      t.integer :affection
    end
  end
end
