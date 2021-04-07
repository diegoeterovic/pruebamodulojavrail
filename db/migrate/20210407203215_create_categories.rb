class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :parent_category
      t.boolean :public

      t.timestamps
    end
  end
end
