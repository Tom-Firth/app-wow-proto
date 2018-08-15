class AddActifToPersonnage < ActiveRecord::Migration[5.2]
  def change
    add_column :personnages, :actif, :boolean, default: false
  end
end
