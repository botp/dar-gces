class CreatePostharvestEquipmentAndMachineryTypologies < ActiveRecord::Migration
  def change
    create_table :postharvest_equipment_and_machinery_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
