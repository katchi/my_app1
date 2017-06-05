class CreateCoders < ActiveRecord::Migration[5.0]
  def change
    create_table :coders do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :username
      t.string :encrypeted_password
      t.boolean :active

      t.timestamps
    end
  end
end
