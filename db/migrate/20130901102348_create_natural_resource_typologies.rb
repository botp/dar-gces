class CreateNaturalResourceTypologies < ActiveRecord::Migration
  def change
    create_table :natural_resource_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
