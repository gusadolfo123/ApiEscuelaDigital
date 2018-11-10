class AddUrlImageToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :UrlImage, :string
  end
end
