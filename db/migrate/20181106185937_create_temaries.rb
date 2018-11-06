class CreateTemaries < ActiveRecord::Migration[5.2]
  def change
    create_table :temaries do |t|
      t.string :Title
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
