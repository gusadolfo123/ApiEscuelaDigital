class CreateCategoriesCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_courses do |t|
      t.belongs_to :category, foreign_key: true
      t.belongs_to :course, foreign_key: true

      t.timestamps
    end
  end
end
