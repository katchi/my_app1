class CreateCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :codes do |t|
      t.integer :coder_id
      t.text :content
      t.string :language
      t.boolean :status

      t.timestamps
    end
  end
end
