class CreateJoinTableCoursesCategories < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses, :categories do |t|
      t.references :course, foreign_key: true
      t.references :category, foreign_key: true
    end
  end
end
