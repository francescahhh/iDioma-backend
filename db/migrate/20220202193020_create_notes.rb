class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.text :content
      t.references :user
      t.references :note_category
      t.timestamps
    end
  end
end
