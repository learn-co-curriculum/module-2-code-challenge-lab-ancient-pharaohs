class CreatePyramids < ActiveRecord::Migration[6.0]
  def change
    create_table :pyramids do |t|
      t.string :name
      t.string :img_url
      t.integer :height

      t.timestamps
    end
  end
end
