class AddBmTypesToBookmarks < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookmarks, :bm_types, foreign_key: true
  end
end
