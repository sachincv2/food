class Addcoltocat < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :category_image, :string
  end
end
