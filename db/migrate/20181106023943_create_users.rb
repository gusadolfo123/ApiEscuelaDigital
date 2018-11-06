class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :documentNumber
      t.string :photo
      t.string :password_digest
      t.references :rol, foreign_key: true
      t.references :document_type, foreign_key: true

      t.timestamps
    end
  end
end
