class AddCategoryToBlog < ActiveRecord::Migration
  def change
    add_reference :blogs, :category, index: true
    add_foreign_key :blogs, :categories
  end
end
