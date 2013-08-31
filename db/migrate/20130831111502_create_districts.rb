class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.integer :province_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
