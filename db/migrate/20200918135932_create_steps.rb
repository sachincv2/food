class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.text :step_description
      t.integer :step_num
      t.text :step_image_path
      t.string :step_title
      t.text :step_cautionpoint
      t.references :recipie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
