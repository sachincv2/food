class Addcol < ActiveRecord::Migration[6.0]
  def change
    add_column :recipies, :recipie_ingredients, :text
  end
end
