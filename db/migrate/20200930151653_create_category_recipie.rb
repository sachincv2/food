class CreateCategoryRecipie < ActiveRecord::Migration[6.0]
  def change
    create_table :category_recipies do |t|
      t.references :category, null: false, foreign_key: true
      t.references :recipie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
