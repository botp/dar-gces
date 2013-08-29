class CreateMunicipalities < ActiveRecord::Migration
  def change
    create_table :municipalities do |t|
      t.string :tag
      t.string :name
      t.text :description

      t.references :province
      t.timestamps
    end
  end
end
