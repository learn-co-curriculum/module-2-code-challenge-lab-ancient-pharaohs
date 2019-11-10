class CreatePharaohs < ActiveRecord::Migration[6.0]
  def change
    create_table :pharaohs do |t|
      t.string :name
      t.string :date_of_death

      t.timestamps
    end
  end
end
