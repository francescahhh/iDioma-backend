class CreateWordCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :word_categories do |t|

      t.timestamps
    end
  end
end
