class Addcol2 < ActiveRecord::Migration[6.0]
  def change
    add_column :recipies, :recipie_difficulty, :string
  end
end
