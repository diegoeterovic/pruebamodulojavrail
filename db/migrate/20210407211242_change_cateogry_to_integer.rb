class ChangeCateogryToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :categories, :parent_category, :integer
  end
end
