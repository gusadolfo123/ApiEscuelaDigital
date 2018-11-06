class CreateJoinTableLessonsUsers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :lessons, :users do |t|
      t.references :lesson, foreign_key: true
      t.references :user, foreign_key: true
      t.text :Content
      
      t.timestamps
    end
  end
end
