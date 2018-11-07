class CreateCoursesStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :courses_students do |t|
      t.belongs_to :student, foreign_key: true
      t.belongs_to :course, foreign_key: true

      t.timestamps
    end
  end
end
