class CreateBarangays < ActiveRecord::Migration
  def change
    create_table :barangays do |t|
      t.string :tag
      t.string :name
      t.text :description

      t.references :municipality
      t.timestamps
    end
  end
end
