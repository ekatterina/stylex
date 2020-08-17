class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.float :price
      t.string :size
      t.string :color
      t.string :category
      t.text :description
      t.string :pickup_location
      t.boolean :booked
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
