class DropBmTypesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :bm_types
  end
end
