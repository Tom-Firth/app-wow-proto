class CreatePersonnages < ActiveRecord::Migration[5.2]
  def change
    create_table :personnages do |t|
      t.string :name
      t.string :server
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
