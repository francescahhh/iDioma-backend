class CreateWords < ActiveRecord::Migration[7.0]
  def change
    create_table :words do |t|
      t.string :word
      t.string :definition
      t.string :source
      t.references :user
      t.references :word_category
      t.timestamps
    end
  end
end
