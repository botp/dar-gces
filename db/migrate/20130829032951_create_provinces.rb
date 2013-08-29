class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :tag
      t.string :name
      t.text :description


      t.timestamps
      t.references :region
      
    end
  end
end
