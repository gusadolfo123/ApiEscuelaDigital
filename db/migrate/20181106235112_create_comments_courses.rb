class CreateCommentsCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :comments_courses do |t|
      t.text :content
      t.belongs_to :course, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
