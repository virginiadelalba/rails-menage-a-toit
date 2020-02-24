class CreateTerraces < ActiveRecord::Migration[5.2]
  def change
    create_table :terraces do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.integer :capacity
      t.string :address
      t.boolean :available, default: false
      t.integer :price

      t.timestamps
    end
  end
end
