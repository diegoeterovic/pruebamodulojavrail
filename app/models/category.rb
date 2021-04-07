class Category < ApplicationRecord
    has_many :bookmarks
    has_many :children, :class_name => "Category", :foreign_key => "parent_category_id"
end
