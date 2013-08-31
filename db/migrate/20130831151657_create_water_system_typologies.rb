class CreateWaterSystemTypologies < ActiveRecord::Migration
  def change
    create_table :water_system_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
