class AddSubjectToBookmarks < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookmarks, :subject, foreign_key: true
  end
end
