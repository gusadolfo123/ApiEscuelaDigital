class AddUrlImageToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :UrlImage, :string
  end
end
