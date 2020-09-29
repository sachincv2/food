class CreateRecipies < ActiveRecord::Migration[6.0]
  def change
    create_table :recipies do |t|
      t.string :recipie_name
      t.string :recipie_category
      t.string :recipie_type
      t.integer :recipie_time
      t.integer :recipie_likes
      t.text :recipie_description
      t.string :recipie_video_url
      t.text :recipie_equipments
      t.text :recipie_skills
      t.integer :recipie_price
      t.text :recipie_image_path

      t.timestamps
    end
  end
end
